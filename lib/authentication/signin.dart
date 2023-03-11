import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Row(
          children: [
            Image.asset(
              'assets/icon.png',
            ),
            Text(
              "logo",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
