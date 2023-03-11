import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'package:kyoconseilapp/Welcome.dart';
import 'chatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);
const grayColor = Color(0xffF3F3F3);

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
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
                        Image.asset('assets/getstarted.png'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Welcome to KYO',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 40,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 22.0,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 32.0),
                            width: double.infinity,
                            child: Expanded(
                              child: Text(
                                  'We are here to work with you to identify your specific requirements and offer customized solutions to ensure sustained success in your digital communications.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            )),
                        SizedBox(
                          height: 40.0,
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
                                      builder: (context) => Welcome()),
                                );
                              },
                              child: Text('Next',
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
