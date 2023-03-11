import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'package:kyoconseilapp/Welcome.dart';
import 'chatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);
const grayBlackColor = Color(0xffD9D9D9);
const grayColor = Color(0xffF3F3F3);
const checkColor = Colors.white;
const textGrayColor = Color(0xff5E5E5E);

class SignUpinfo extends StatefulWidget {
  const SignUpinfo({super.key});

  @override
  State<SignUpinfo> createState() => _SignUpinfoState();
}

class _SignUpinfoState extends State<SignUpinfo> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
            drawer: NavBar(),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0.0,
              title: Image.asset(
                'assets/icon.png',
              ),
              actions: [],
            ),
            extendBodyBehindAppBar: true,
            backgroundColor: backgroundColor,
            body: SafeArea(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                    child: Center(
                        child: Column(children: [
                      SizedBox(
                        height: 7.0,
                      ),

                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Sign up',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Nunito',
                                          fontSize: 45,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    width: 160,
                                    child: Text(
                                        'using your google account or inter your information',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Nunito',
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )),
                          Expanded(
                            child: SizedBox(
                              width: 5.0,
                            ),
                          ),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/welcome.png',
                                height: 150,
                              ),
                            ],
                          ))
                        ],
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: grayColor,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('First name',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: textGrayColor,
                                            fontFamily: 'Nunito',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w100))
                                  ]),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: grayColor,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Last name',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: textGrayColor,
                                            fontFamily: 'Nunito',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w100))
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: grayColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Email',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: textGrayColor,
                                      fontFamily: 'Nunito',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w100))
                            ]),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: grayColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Re-write your email',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: textGrayColor,
                                      fontFamily: 'Nunito',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w100))
                            ]),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: grayColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Password',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: textGrayColor,
                                      fontFamily: 'Nunito',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w100))
                            ]),
                      ),

                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: grayBlackColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(' '),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                              checkColor: Colors.white,
                              activeColor: redColor,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text('I Agree to the term of use',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Nunito',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Expanded(
                        child: Container(width: double.infinity),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.all(4.0),
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: redColor),
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Nunito',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.all(0.0),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.all(4.0),
                                height: 35,
                                decoration: BoxDecoration(
                                    color: redColor,
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (isChecked)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Welcome()),
                                      );
                                  },
                                  child: Text('Sign in',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Nunito',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                    backgroundColor: redColor,
                                    padding: EdgeInsets.all(3.0),
                                  ),
                                )),
                          )
                        ],
                      )
                    ]))))));
  }
}
