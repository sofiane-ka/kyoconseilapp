import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kyoconseilapp/HomePage.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'chatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);
const grayColor = Color(0xffF3F3F3);

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();

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
                        child: Column(
                      children: [
                        SizedBox(
                          height: 7.0,
                        ),
                        Image.asset('assets/welcome.png'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Welcome to our community',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 35.0,
                        ),
                        Container(
                            padding: EdgeInsets.all(4.0),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: redColor,
                                borderRadius: BorderRadius.circular(12.0)),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              },
                              child: Text('Get Started',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Nunito',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                shadowColor: Colors.transparent,
                                backgroundColor: redColor,
                                padding: EdgeInsets.all(3.0),
                              ),
                            )),
                      ],
                    ))))));
  }
}
