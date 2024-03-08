import 'package:careacademy/Login/SignIn.dart';
import 'package:careacademy/Screens/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
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
  }

  @override
  void dispose() {
    animationController.dispose();
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
        onWillPop: () async {
          // Exit the application when back button is pressed
          SystemNavigator.pop();
          return false;
        },
    child: Scaffold(
        resizeToAvoidBottomInset: false, // Avoids resizing the layout when the keyboard appears
        backgroundColor: CupertinoColors.white,
        body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 54.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 142,
                height: 74.72,
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
          OrientationBuilder(
              builder: (context, orientation) {
              return Container(
               child: SizedBox(
                 height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height / 1.38
                          : MediaQuery.of(context).size.height / 1.7,
                      child: SingleChildScrollView(
                    child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 5.69,
                              width: MediaQuery.of(context).size.width ,
                              // width: constraints.maxWidth,
                              // height: constraints.maxHeight / 7.7,
                              margin: EdgeInsets.only(top: 35.43, left: 76.95, right: 28),
                              // padding: EdgeInsets.only(top: 0.037,bottom: 0.22),
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Expanded(
                                      child:Text(
                                        'مرحباً بك',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 27.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    //SizedBox(height: 8.37),
                                    Expanded(
                                      child: Text(
                                        '👋في منصة الأستاذ مايكل عاطف',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,

                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              // width: 337.08,
                              // height: 590.95,
                              margin: EdgeInsets.symmetric(horizontal: 6.0),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 18.0, left: 18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8, right: 8),
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'أسم الطالب',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
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
                                                padding:
                                                    const EdgeInsets.only(right: 15.0),
                                                child: TextField(
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
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'البريد الألكترونى',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
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
                                                padding:
                                                    const EdgeInsets.only(right: 15.0),
                                                child: TextField(
                                                  keyboardType:
                                                      TextInputType.emailAddress,
                                                  textAlign: TextAlign.right,
                                                  cursorColor: Colors.blueAccent,

                                                  textInputAction: TextInputAction.next,
                                                  decoration: InputDecoration(
                                                    hintText: 'البريد الألكترونى',
                                                    hintStyle: TextStyle(
                                                      fontFamily: 'Cairo',
                                                      color: Colors.grey,
                                                    ),
                                                    border: InputBorder.none,
                                                  ),
                                                  onChanged: (value) {
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
                                              Icons.mail_outline,
                                              size: 21,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'رقم التليفون',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
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
                                                padding:
                                                    const EdgeInsets.only(right: 15.0),
                                                child: TextField(
                                                  cursorColor: Colors.blueAccent,

                                                  inputFormatters: [
                                                    LengthLimitingTextInputFormatter(12),
                                                  ],
                                                  textInputAction: TextInputAction.done,//to hide number when finished                                                   keyboardType:
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


                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'الصف الدراسى',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                     ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Stack(
                                        children: [
                                          Container(
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
                                                      showList = !showList; // Toggle the visibility of the list
                                                    });
                                                  },
                                                  child: Container(
                                                    color: Colors.white10,
                                                    margin: EdgeInsets.only(right: 20.0, left: 20),
                                                    // Adjust margin from right
                                                    child: Icon(
                                                      Icons.keyboard_arrow_down,
                                                      color: Colors.grey.shade900,
                                                      size: 26,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(right: 15.0),
                                                      child: TextFormField(
                                                        readOnly: true, // Make the TextFormField read-only
                                                        keyboardType: TextInputType.text,
                                                        textAlign: TextAlign.right,
                                                        textInputAction: TextInputAction.done,
                                                        // Set action button
                                                        decoration: InputDecoration(
                                                          hintText: selectedValue!.isNotEmpty
                                                              ? selectedValue
                                                              : 'الصف الدراسى',
                                                          hintStyle: TextStyle(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.grey,
                                                          ),
                                                          border: InputBorder.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(right: 20.0),
                                                  // Adjust margin from right
                                                  child: Icon(
                                                    Icons.school_outlined,
                                                    color: Colors.grey.shade400,
                                                    size: 21,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),SizedBox(height: 10,),
                                          if (showList)
                                            Container(
                                              width: 200, // Adjust the width as needed
                                              child: Card(
                                                elevation: 2,
                                                child: ListView(shrinkWrap: true, children: [
                                                  ListTile(
                                                    title: Text('الصف الاول'),
                                                    onTap: () {
                                                      setState(() {
                                                        selectedValue = 'الصف الاول';
                                                        showList = false;
                                                      });
                                                    },
                                                  ),
                                                  ListTile(
                                                    title: Text('الصف الثانى'),
                                                    onTap: () {
                                                      setState(() {
                                                        selectedValue = 'الصف الثانى';
                                                        showList = false;
                                                      });
                                                    },
                                                  ),
                                                  ListTile(
                                                    title: Text('الصف الثالث'),
                                                    onTap: () {
                                                      setState(() {
                                                        selectedValue = 'الصف الثالث';
                                                        showList = false;
                                                      });
                                                    },
                                                  ),
                                                ]),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 30.0),
                                              child: Container(
                                                alignment: Alignment.bottomCenter,
                                                child: SizedBox(
                                                  width: 300,
                                                  height: 56,
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 10.0),
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  20.0),
                                                        ),
                                                        backgroundColor: Color(
                                                            0xFF008DC9), // Background color
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  Home()),
                                                        );
                                                      },
                                                      child: Text(
                                                        'أنشاء حساب',
                                                        style: TextStyle(
                                                            fontFamily: 'Cairo',
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.normal),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            width: 322,
                                            height: 50.12,
                                            padding:
                                                EdgeInsets.only(right: 15.0, top: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                SignIn()),
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
                                        ),
                                      ],
                                    ),
                                    ),
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                );
            }
          ),

        ],
      );}),
    ) );
  }
}
