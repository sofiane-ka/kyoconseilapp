import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kyoconseilapp/ContactUs.dart';
import 'package:kyoconseilapp/Feedb.dart';
import 'package:kyoconseilapp/GetStarted.dart';
import 'package:kyoconseilapp/latest_mails.dart';
import 'Feedb.dart';

import 'package:kyoconseilapp/HomePage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(children: [
              buildHeader(
                name: 'Sofiane KARAOUNI',
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(),
              Image.asset('assets/shortLine.png'),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                  title: Text('Home',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w100)),
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      )),
              ListTile(
                  title: Text('History',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w100)),
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LatestMails()),
                      )),
              ListTile(
                title: Text('Services',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Nunito',
                        fontSize: 20,
                        fontWeight: FontWeight.w100)),
                onTap: () => null,
              ),
              ListTile(
                  title: Text('Contact us',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w100)),
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactUs()),
                      )),
              ListTile(
                  title: Text('Feedback',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w100)),
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Feedb()),
                      )),
              SizedBox(
                height: 50.0,
              ),
              Container(
                  height: 40,
                  width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GetStarted()),
                      );
                    },
                    child: Text('Logout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Nunito',
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFF2D56),
                      padding: EdgeInsets.all(3.0),
                    ),
                  )),
              SizedBox(height: 10.0),
            ])));
  }
}

Widget buildHeader({required String name}) => InkWell(
    child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Image.asset('assets/menuProfile.png'),
            SizedBox(
              height: 20.0,
            ),
            Text(name,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ],
        )));
