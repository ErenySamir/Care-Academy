import 'package:careacademy/Login/SignIn.dart';
import 'package:careacademy/Screens/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
  TextEditingController PhoneController = TextEditingController();
  TextEditingController NameController = TextEditingController();
  TextEditingController SchoolYearController = TextEditingController();

  bool showList = false;
  String selectedValue = '';

  late AnimationController animationController;
  late Animation<double> animation;
  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    super.initState();
    sharedtoSaveData();

    // Define animation controller
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Adjust the duration as needed
    );
    Future.delayed(Duration(seconds: 2), () {});

    // Define animation
    animation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    // Start the animation
    animationController.forward();
    loadSharedPreferences();
  }

  Future<void> sharedtoSaveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // setState(() {
    //   NameController.text = prefs.getString('name') ?? '';
    //   Name = NameController.text;
    // });
  }

  final _formKey = GlobalKey<FormState>();

  String SchoolYear = '';

  var Name = '';
  var Phone = '';
  String NameErrorText = '';
  String PhoneErrorText = '';



  void validateYear(String value) {
    if (value.isEmpty) {
      setState(() {
        SchoolYear = 'يجب اختيار الصف الدراسي *';
      });
    }  else {
      setState(() {
        SchoolYear = '';
      });
    }
  }

  void validateName(String value) {
    if (value.isEmpty) {
      setState(() {
        NameErrorText = 'ادخل الاسم كاملا *';
      });
    } else if (value.length < 3) {
      setState(() {
        NameErrorText = '';
      });
    } else {
      setState(() {
        NameErrorText = ''; // No error message for 3-letter names
      });
    }
  }

  void validatePhone(String value) {
    if (value.isEmpty) {
      setState(() {
        PhoneErrorText = 'ادخل رقم الهاتف *';
      });
    } else if (value.length < 11) {
      setState(() {
        PhoneErrorText = 'يجب أن يكون رقم الهاتف 11 رقمًا *';
      });
    } else {
      setState(() {
        PhoneErrorText = ''; // No error message for 3-letter names
      });
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  Future<void> loadSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedValue = prefs!.getString('selectedValue') ?? "";
    });
  }

  //to calllll apiiiiiiiiiiiiiiii

  final dio = Dio(BaseOptions(baseUrl: "https://petrasoftware.co.uk/care_academy_api"));

  Future<dynamic> SignUpStudent() async {
    // Check internet connectivity
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      // Not connected to any network
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'لا يوجد اتصال بالإنترنت',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Prepare user data
    final Map<String, dynamic> userData = {
      "token_id_v": "", // Placeholder value
      "phone_v": PhoneController.text,
      "name_v": NameController.text,
      "school_year_id_v": 1,
      "os_version_v": "",
      "device_type_v": "",
      "app_version_v": "",
      "fcm_token_id_v": "",
    };

    final response = await dio.post(
      '/student_register.php',
      data: userData,
    );

    print("object111: " + response.data.toString());

    if (response.statusCode == 200) {
      // Retrieve the student ID from the API response
      final studentId = response.data['s_id'];
      // Update the user data with the retrieved student ID
      userData['token_id_v'] = studentId;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'تم التسجيل بنجاح',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.green,
        ),
      );

      // Show msg from the API
      print(response.data);
      print('Sign Up is success');
      print('Name ${NameController.text}');
      print('Phone ${PhoneController.text}');
      print('School Year ${selectedValue}');
      print(response.data['id']);

      return response.data;
    }
    else {
      print(response.data);
      // Show the Snackbar with red color and "Try Again" text
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'برجاء المحاولة مرة أخرى',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.red,
        ),
      );
      return null;
    }
  }

  final prefs = SharedPreferences.getInstance();
  // Future<void> SignUpStudent() async {
  //   try {
  //     // Generate a unique student ID
  //     String studentId = Uuid().v4();      // Construct the request body
  //     //String studentId ='7';
  //     Map<String, dynamic> requestBody = {
  //       //  "token_id_v": studentId,
  //       // "phone_v": PhoneController.text,
  //       // "name_v": NameController.text,
  //       // "email_v": EmailController.text,
  //       // "school_year_id_v": selectedValue,
  //       // "os_version_v":"",
  //       // "device_type_v":"",
  //       // "app_version_v":"",
  //       // "fcm_token_id_v":"",
  //       "name_v":"test233",
  //       "email_v":"test2333",
  //       "phone_v":"01025610545",
  //       "school_year_id_v":"1",
  //       "token_id_v":"",
  //       "os_type_v":"",
  //       "os_version_v":"",
  //       "device_type_v":"",
  //       "app_version_v":"",
  //       "fcm_token_id_v":""
  //     };
  //     // Make the HTTP POST request to the API
  //     final response = await http.post(
  //       Uri.parse('http://192.168.0.75/care_academy_api/student_register.php'),
  //       body: requestBody,
  //     );
  //     print(requestBody);
  //     // Check if the request was successful
  //     if (response.statusCode == 200) {
  //       NameController.text;
  //        EmailController.text;
  //       PhoneController.text;
  //       selectedValue;
  //       //show msg from api
  //       print(response.body);
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('تم التسجيل بنجاح',
  //             textAlign: TextAlign.center,style: TextStyle(
  //               fontFamily: 'Cairo',
  //               fontSize: 15.0,
  //               fontWeight: FontWeight.normal
  //           ),),
  //           backgroundColor: Colors.green,
  //         ),
  //       );
  //       print('Sign Up is success');
  //       print('Name ${NameController.text}');
  //       print('E-mail ${EmailController.text}');
  //       print('Phone ${PhoneController.text}');
  //       print('School Year ${selectedValue}');
  //       print(response.body);
  //     }
  //     else {
  //       print(response.body);
  //       // Show the Snackbar with red color and "Try Again" text
  //    //   String errorMessage = response.body; // Assuming the error message is returned in the response body
  //     ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('برجاء المحاوله مره اخري',textAlign: TextAlign.center,style: TextStyle(
  //               fontFamily: 'Cairo',
  //               fontSize: 15.0,
  //               fontWeight: FontWeight.normal
  //           ),),
  //           backgroundColor: Colors.red,
  //         ),
  //       );
  //   }
  //   } catch (e) {
  //     // Show the Snackbar with red color and "Try Again" text
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text('حاول مجددا',style: TextStyle(
  //             fontFamily: 'Cairo',
  //             fontSize: 15.0,
  //             fontWeight: FontWeight.normal
  //         ),),
  //         backgroundColor: Colors.red,
  //       ),
  //     );
  //     print('Error updating student data: $e');
  //   }
  // }

  //}
  Future<void> saveSelectedValueToSharedPreferences(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedValue', value);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          // Exit the application when back button is pressed
          SystemNavigator.pop();
          return false;
        },
        child: Form(
          key: _formKey,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            // Avoids resizing the layout when the keyboard appears
            backgroundColor: CupertinoColors.white,
            body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 142,
                            height: 88.72,
                            child: AnimatedBuilder(
                              animation: animationController,
                              builder: (context, child) {
                                return Transform.scale(
                                  scale: animation.value,
                                  child: Image.asset('assets/images/Logo.png'),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    'مرحباً بك',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 27.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),

                                  //SizedBox(height: 8.37),
                                  Text(
                                    '👋في منصة الأستاذ مايكل عاطف',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 12,),
                                  Text(
                                    'أسم الطالب',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    // width: 317,
                                    // height: 52.82,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      shape: BoxShape.rectangle,
                                      color: Color(0xFFF6F4FE),
                                    ),
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: TextField(
                                                controller: NameController,
                                                cursorColor: Colors.blueAccent,
                                                keyboardType: TextInputType.text,
                                                textAlign: TextAlign.right,
                                                textInputAction:
                                                TextInputAction.next,
                                                decoration: InputDecoration(
                                                  hintText: 'أسم الطالب',
                                                  hintStyle: TextStyle(
                                                    fontFamily: 'Cairo',
                                                    color: Colors.grey,
                                                  ),
                                                  border: InputBorder.none,
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    Name = value;
                                                    validateName(value);
                                                  });
                                                },
                                                onEditingComplete: () async {
                                                  // Move focus to the next text field
                                                  FocusScope.of(context)
                                                      .nextFocus();
                                                  SharedPreferences prefs =
                                                  await SharedPreferences
                                                      .getInstance();
                                                  prefs.setString('name', Name);
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 21,
                                          width: 21,
                                          margin: EdgeInsets.only(right: 20.0),
                                          child: ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                              Colors.grey.shade400,
                                              BlendMode.modulate,
                                            ),
                                            child: Image.asset(
                                              'assets/images/name.png',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (NameErrorText.isNotEmpty)
                                    Text(
                                      textAlign: TextAlign.end,
                                      NameErrorText,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'Cairo',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'رقم التليفون',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 52.82,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      shape: BoxShape.rectangle,
                                      color: Color(0xFFF6F4FE),
                                    ),
                                    alignment: Alignment.centerRight,
                                    // Align the container to the right
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: TextField(
                                                controller: PhoneController,
                                                cursorColor: Colors.blueAccent,

                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      11),
                                                ],
                                                textInputAction:
                                                TextInputAction.done,
                                                //to hide number when finished                                                   keyboardType:
                                                keyboardType: TextInputType.number,
                                                textAlign: TextAlign.right,
                                                decoration: InputDecoration(
                                                  hintText: 'رقم التليفون',
                                                  hintStyle: TextStyle(
                                                    fontFamily: 'Cairo',
                                                    color: Colors.grey,
                                                  ),
                                                  border: InputBorder.none,
                                                ),
                                                onChanged: (value) {
                                                  setState(() {
                                                    Phone = value;
                                                    validatePhone(value);
                                                  });
                                                },
                                                onEditingComplete: () async {
                                                  // Move focus to the next text field
                                                  FocusScope.of(context)
                                                      .nextFocus();
                                                  SharedPreferences prefs =
                                                  await SharedPreferences
                                                      .getInstance();
                                                  prefs.setString('phone', Phone);
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 20.0),
                                          child: Icon(
                                            color: Colors.grey.shade400,
                                            Icons.phone,
                                            size: 21,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (PhoneErrorText.isNotEmpty)
                                    Text(
                                      textAlign: TextAlign.end,
                                      PhoneErrorText,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontFamily: 'Cairo',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'الصف الدراسى',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 52.82,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            shape: BoxShape.rectangle,
                                            color: Color(0xFFF6F4FE),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    showList =
                                                    !showList; // Toggle the visibility of the list
                                                  });
                                                },
                                                child: Container(
                                                  color: Colors.white10,
                                                  margin: EdgeInsets.only(
                                                      right: 20.0, left: 20),
                                                  child: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: Colors.grey.shade900,
                                                    size: 26,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      showList = !showList;

                                                    });
                                                  },
                                                  child: Container(
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          right: 15.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            showList = !showList;
                                                          });
                                                        },
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  showList =
                                                                  !showList;
                                                                });
                                                              },
                                                              child: Padding(
                                                                padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right:
                                                                    18.0),
                                                                child: Text(
                                                                  selectedValue!
                                                                      .isNotEmpty
                                                                      ? selectedValue
                                                                      : 'الصف الدراسى',
                                                                  style: TextStyle(
                                                                    fontFamily:
                                                                    'Cairo',
                                                                    color: selectedValue!
                                                                        .isNotEmpty
                                                                        ? Colors
                                                                        .black
                                                                        : Colors
                                                                        .grey
                                                                        .shade500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Icon(
                                                              Icons.school_outlined,
                                                              color: Colors
                                                                  .grey.shade400,
                                                              size: 21,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        if (showList)
                                          Container(
                                            height: 140,
                                            child: Card(
                                              child: ListView(
                                                shrinkWrap: true,
                                                children: [
                                                  ListTile(
                                                    title: Text('الصف الاول',
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(
                                                          fontFamily: 'Cairo',
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                          FontWeight.normal,
                                                        )),
                                                    onTap: () {
                                                      setState(() {
                                                        selectedValue =
                                                        'الصف الاول';
                                                        showList = false;
                                                        saveSelectedValueToSharedPreferences(
                                                            selectedValue!);
                                                      });
                                                    },
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.zero,
                                                    child: ListTile(
                                                      title: Text('الصف الثانى',
                                                          textAlign: TextAlign.end,
                                                          style: TextStyle(
                                                            fontFamily: 'Cairo',
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                            FontWeight.normal,
                                                          )),
                                                      onTap: () {
                                                        setState(() {
                                                          selectedValue =
                                                          'الصف الثانى';
                                                          showList = false;
                                                          saveSelectedValueToSharedPreferences(
                                                              selectedValue!);

                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.zero,
                                                    child: ListTile(
                                                      title: Text('الصف الثالث',
                                                          textAlign: TextAlign.end,
                                                          style: TextStyle(
                                                            fontFamily: 'Cairo',
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                            FontWeight.normal,
                                                          )),
                                                      onTap: () {
                                                        setState(() {
                                                          selectedValue =
                                                          'الصف الثالث';
                                                          showList = false;
                                                          saveSelectedValueToSharedPreferences(
                                                              selectedValue!);

                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.zero,
                                                    child: ListTile(
                                                      title: Text('الصف الرابع',
                                                          textAlign: TextAlign.end,
                                                          style: TextStyle(
                                                            fontFamily: 'Cairo',
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                            FontWeight.normal,
                                                          )),
                                                      onTap: () {
                                                        setState(() {
                                                          selectedValue =
                                                          'الصف الرابع';
                                                          showList = false;
                                                          saveSelectedValueToSharedPreferences(
                                                              selectedValue!);

                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  SizedBox(
                                    height: 48,
                                  ),
                                  Center(
                                    child: SizedBox(
                                      width: 330,
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20.0),
                                          ),
                                          backgroundColor:
                                          Color(0xFF008DC9), // Background color
                                        ),
                                        onPressed: () async {
                                          // Check internet connectivity
                                          final connectivityResult = await Connectivity().checkConnectivity();
                                          if (connectivityResult == ConnectivityResult.none) {
                                            // I am not connected to any network.
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'لا يوجد اتصال بالإنترنت',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Cairo',
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                                backgroundColor: Colors.red,
                                              ),
                                            );
                                            return;
                                          }
                                          if (Phone.isEmpty || Name.isEmpty ||  selectedValue.isEmpty) {
                                            setState(() {
                                              NameErrorText = ' يجب ادخال الاسم كاملاً *';
                                              PhoneErrorText = ' يجب ادخال رقم التليفون *';
                                              SchoolYear = ' يجب اختيار الصف الدراسي *';
                                            });
                                            return;
                                          } else if (Name.length < 2) {
                                            setState(() {
                                              NameErrorText =
                                              ' يجب أن يكون الاسم كاملاً *';
                                            });
                                            return;
                                          } else if (Phone.length < 11) {
                                            setState(() {
                                              PhoneErrorText =
                                              ' يجب أن يكون رقم الهاتف 11 رقمًا *';
                                            });
                                            return;
                                          }
                                          SharedPreferences prefs = await SharedPreferences.getInstance();
                                          // Save data to SharedPreferences
                                          prefs.setString('studentName', NameController.text!);
                                          prefs.setString('phoneNumber', PhoneController.text!);
                                          SignUpStudent();
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Home()),
                                          );
                                        },
                                        child: Text(
                                          'أنشاء حساب',
                                          style: TextStyle(
                                              fontFamily: 'Cairo',
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 22),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => SignIn()),
                                              );
                                            });
                                          },
                                          child: Text(
                                            ' تسجيل الدخول',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Cairo',
                                              fontSize: 12.9,
                                              color: Color(0xFF008DC9),
                                              // Background color
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' هل لديك حساب ؟',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 15.0,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                      ),
                    ],
                  );
                }),
          ),
        ));
  }
}
