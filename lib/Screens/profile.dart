import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../HomeWork/lessons.dart';
import '../SavedLesson/Live.dart';
import 'Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profile extends StatefulWidget {
  @override
  _DropdownWithSelectionState createState() => _DropdownWithSelectionState();
}

class _DropdownWithSelectionState extends State<profile> {
  bool showList = false;
  String selectedValue = '';
  int currentIndexx = 0;
  File? _image;

//email validation
  var Name = '';
  var Phone = '';
  String SchoolYear = 'يجب اختيار الصف الدراسي';

  String NameErrorText = '';
  String PhoneErrorText = '';

  void validateName(String value) {
    if (value.isEmpty) {
      setState(() {
        NameErrorText = '*ادخل الاسم كاملا';
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
        PhoneErrorText = '*ادخل رقم الهاتف ';
      });
    } else if (value.length < 11) {
      setState(() {
        PhoneErrorText = 'يجب أن يكون رقم الهاتف 11 رقمًا';
      });
    } else {
      setState(() {
        PhoneErrorText = ''; // No error message for 3-letter names
      });
    }
  }

// Initialize a TextEditingController and FocusNode
  final TextEditingController studentNameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

// Boolean variable to track email validity

  String? studentName = ''; // Variable to store the entered student name
  String? phoneNumber = ''; // Variable to store the entered phone number
  @override
  void initState() {
    super.initState();
    loadSelectedValue(); //for the dropdown
    loadImage(); //for load image shared preference
    loadDataFromSharedPreferences(); //load name of student , phone number and email
  }

  Future<void> loadDataFromSharedPreferences() async {
    // Initialize SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Retrieve data from SharedPreferences
    setState(() {
      selectedValue = prefs.getString('selectedValue') ??
          ''; // Use default value if not found

      studentNameController.text = prefs.getString('studentName') ??
          ''; // Load studentName, default value is an empty string
      ''; // Load emailAddress, default value is an empty string
      phoneController.text = prefs.getString('phoneNumber') ??
          ''; // Load phoneNumber, default value is an empty string
    });
  }

  Future<void> loadSelectedValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedValue = prefs.getString('selectedValue') ??
          ''; // Use default value if not found
    });
  }

  // Future<void> chooseImage() async {
  //   try {
  //     final picker = ImagePicker();
  //     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  //     if (pickedFile != null) {
  //       setState(() {
  //         _image = File(pickedFile.path);
  //       });
  //
  //       // Convert the selected image to bytes
  //       List<int> imageBytes = await _image!.readAsBytes();
  //       print('Image bytes: $imageBytes');
  //
  //       // Send the image to the API
  //       await sendImageToAPI(imageBytes);
  //     } else {
  //       print('No image selected.');
  //     }
  //   } catch (e) {
  //     print('Error picking image: $e');
  //   }
  // }

  Future<void> sendImageToAPI(File imageFile) async {
    try {
      String id = "2";
      // final id = "1"; // Replace "your_id_here" with your actual id
      final request = http.MultipartRequest(
          'POST',
          Uri.parse(
              'https://petrasoftware.co.uk/care_academy_api/student_photo_update.php'));
      request.fields['id_v'] = id;
      request.files
          .add(await http.MultipartFile.fromPath('photo_v', imageFile.path));
      final response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
        print('Image uploaded successfully');
      } else {
        print('Failed to upload image. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error uploading image: $e');
    }
  }

  Future<void> chooseImage() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });

        // Send the image to the API
        await sendImageToAPI(_image!);
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  Future<void> sendStudentData() async {
    try {
      String studentId = "2";
      // final studentId = '2'; // Change this to your actual student ID
      final schoolYearId = '1'; // Change this to the correct school year ID

      final request = http.MultipartRequest(
          'POST',
          Uri.parse(
              'https://petrasoftware.co.uk/care_academy_api/student_update.php'));
      request.fields['id'] = studentId;
      request.fields['stuName'] = studentNameController.text;
      request.fields['classroom'] = "2"; // Assuming classroom is fixed as "2"
      request.fields['phone'] = phoneController.text;
      request.fields['addby'] = "1";
      request.fields['school_year_id_v'] = schoolYearId;

      final response = await request.send();

      // Rest of your code remains the same...
      print('Request headers: ${request.headers}');
      print('Request body: ${request.fields}');
      // Check if the request was successful
      if (response.statusCode == 200) {
        print('Student data updated successfully');
        print(await response.stream.bytesToString());

        // Print the user input data
        print('Student ID: $studentId');
        print('Name: ${studentNameController.text}');

        print('Phone: ${phoneController.text}');
        // print('classroom: $classroom');
      } else {
        print('Failed to update student data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error updating student data: $e');
    }
  }

  Future<void> loadImage() async {
    final prefs = await SharedPreferences.getInstance();
    final imagePath = prefs.getString('imagePath');
    if (imagePath != null) {
      setState(() {
        _image = File(imagePath);
      });
    }
  }

  Future<void> sendSchoolData() async {
    try {
      String SchoolId ="2";
      final schoolYearId = 'first'; // Change this to the correct school year ID

      final request = http.MultipartRequest(
          'POST',
          Uri.parse(
              'https://petrasoftware.co.uk/care_academy_api/school_year_update.php'));
      request.fields['id'] = SchoolId;

      request.fields['classroom'] =
          selectedValue.toString(); // Assuming classroom is fixed as "2"
      request.fields['describe'] = schoolYearId;
      request.fields['addby'] = "1";

      final response = await request.send();

      // Rest of your code remains the same...
      print('Request headers: ${request.headers}');
      print('Request body: ${request.fields}');
      // Check if the request was successful
      if (response.statusCode == 200) {
        print('school Year updated successfully with : ');
        print(await response.stream.bytesToString());

        // Print the user input data
        print('id: $SchoolId');
        print('classroom: ${request.fields['classroom'].toString()}');
        print('describe: ${request.fields['describe'].toString()}');
        print('addby: ${request.fields['addby'].toString()}');
        // print('classroom: $classroom');
      } else {
        print('Failed to update student data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error updating student data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); // Navigate back to the previous page
            },
            child: Image.asset(
              'assets/images/chevron-right.png',
              // Replace with your image asset path
              width: 24, // Adjust the width of the image
              height: 24, // Adjust the height of the image
            ),
          ),
          title: Text(
            "ملفى",
            style: TextStyle(fontSize: 22, fontFamily: 'Cairo'),
          ),
          centerTitle: true, // Center the title horizontally
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: chooseImage,
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: _image != null
                                ? Image.file(_image!).image
                                : AssetImage('assets/images/yara.jpg'),

                            // backgroundImage: _image != null
                            //     ? Image.file(_image!).image
                            //     : AssetImage('assets/images/yara.jpg'),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'يارا عماد',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                // Specify the font family here
                                color: Color(0xFF6C6A6A),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'الصف الثالث الثانوى',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                color: Color(0xFF6C6A6A),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
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
                                      padding: const EdgeInsets.only(right: 15.0),
                                      child: TextField(
                                        controller: studentNameController,
                                        cursorColor: Colors.blueAccent,
                                        keyboardType: TextInputType.text,
                                        textAlign: TextAlign.right,
                                        textInputAction: TextInputAction.next,
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
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
                                      padding: const EdgeInsets.only(right: 15.0),
                                      child: TextFormField(
                                        controller: phoneController,
                                        // Assign the controller here
                                        cursorColor: Colors.blueAccent,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(11),
                                        ],
                                        keyboardType: TextInputType.number,
                                        textAlign: TextAlign.right,
                                        textInputAction: TextInputAction.done,
                                        // Set action button
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
                                        onEditingComplete: () {
                                          // Move focus to the next text field
                                          FocusScope.of(context).nextFocus();
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20.0),
                                  // Adjust margin from right
                                  child: Icon(
                                    color: Colors.grey.shade400,
                                    Icons.phone,
                                    size: 21,
                                  ),
                                ),
                              ],
                            ),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 52.82,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  shape: BoxShape.rectangle,
                                  color: Color(0xFFF6F4FE),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
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
                                        margin: EdgeInsets.only(right: 20.0, left: 20),
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
                                            padding: const EdgeInsets.only(right: 15.0),
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
                                                        showList = !showList;
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(
                                                          right: 18.0),
                                                      child: Text(
                                                        selectedValue!.isNotEmpty
                                                            ? selectedValue
                                                            : 'الصف الدراسى',
                                                        style: TextStyle(
                                                          fontFamily: 'Cairo',
                                                          color: selectedValue!
                                                              .isNotEmpty
                                                              ? Colors.black
                                                              : Colors.grey.shade500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.school_outlined,
                                                    color: Colors.grey.shade400,
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
                              SizedBox(height: 10,),
                              if (showList)
                                Container(
                                  height: 150,
                                  child: Card(
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: [
                                        ListTile(
                                          title: Text('الصف الاول',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Cairo',
                                              )),
                                          onTap: () async {
                                            SharedPreferences prefs =
                                            await SharedPreferences.getInstance();
                                            await prefs.setString(
                                                'selectedValue', 'الصف الاول');
                                            setState(() {
                                              selectedValue = 'الصف الاول';
                                              showList = false;
                                            });
                                          },
                                        ),
                                        ListTile(
                                          title: Text('الصف الثانى',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Cairo',
                                              )),
                                          onTap: () async {
                                            SharedPreferences prefs =
                                            await SharedPreferences.getInstance();
                                            await prefs.setString(
                                                'selectedValue', 'الصف الثانى');
                                            setState(() {
                                              selectedValue = 'الصف الثانى';
                                              showList = false;
                                            });
                                          },
                                        ),
                                        ListTile(
                                          title: Text('الصف الثالث',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Cairo',
                                              )),
                                          onTap: () async {
                                            SharedPreferences prefs =
                                            await SharedPreferences.getInstance();
                                            await prefs.setString(
                                                'selectedValue', 'الصف الثالث');
                                            setState(() {
                                              selectedValue = 'الصف الثالث';
                                              showList = false;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 280,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              backgroundColor: Color(0xFF008DC9), // Background color
                            ),
                            onPressed: () async {
                              final connectivityResult =
                              await Connectivity().checkConnectivity();
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

                              if (Phone.isEmpty &&
                                  Name.isEmpty &&
                                  selectedValue.isEmpty) {
                                setState(() {
                                  NameErrorText = '* يجب ادخال الاسم كاملاً';
                                  PhoneErrorText = '* يجب ادخال رقم التليفون';
                                  SchoolYear = '* يجب اختيار الصف الدراسي';
                                });
                                return;
                              } else if (studentNameController.text.length < 3) {
                                setState(() {
                                  NameErrorText = '* يجب أن يكون الاسم كاملاً';
                                });
                              }
                              // Check if the email is empty or invalid

                              else {
                                // Save entered data to variables
                                studentName = studentNameController.text;
                                phoneNumber = phoneController.text;

                                // Check internet connectivity
                                final connectivityResult =
                                await Connectivity().checkConnectivity();
                                if (connectivityResult != ConnectivityResult.none) {
                                  // Initialize SharedPreferences
                                  SharedPreferences prefs = await SharedPreferences.getInstance();
                                  // Save data to SharedPreferences
                                  prefs.setString('studentName', studentName!);
                                  prefs.setString('phoneNumber', phoneNumber!);
                                  sendStudentData();
                                  sendSchoolData();

                                  // Show Snackbar
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Center(
                                        child: Text(
                                          'تم حفظ البيانات بنجاح',
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                      ),
                                      backgroundColor: Color(0xFF008DC9),
                                    ),
                                  );

                                  // Move to the next page or perform any other action
                                  // ...
                                } else {
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
                                }
                              }
                            },
                            child: Text(
                              'تعديل',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
            }),
        bottomNavigationBar: Container(
          width: 359,
          height: 66.22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                // onTap: () {
                //   setState(() {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => menu()),
                //     );
                //   });
                // },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          'assets/images/user.png',
                          color: Color(0xFF6C6A6A),
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "ملفى",
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 10.90,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Live()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Icon(
                          Icons.online_prediction_outlined,
                          // size: 22, // Adjust the size of the icon as needed
                          color: Color(0xFF6C6A6A),
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "مباشر",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Lessons()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Icon(
                          Icons.collections_bookmark_outlined,
                          // size: 22, // Adjust the size of the icon as needed
                          color: Color(0xFF6C6A6A),
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "الوحدات",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Image.asset(
                          'assets/images/HouseSimple.png',
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "الرئيسية",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.90,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
