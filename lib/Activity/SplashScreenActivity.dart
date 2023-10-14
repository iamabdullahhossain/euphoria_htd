import 'dart:async';

import 'package:euphoria_htd/Activity/LoginActivity.dart';
import 'package:flutter/material.dart';

class SplashScreenActivity extends StatefulWidget {
  const SplashScreenActivity({super.key});

  @override
  State<SplashScreenActivity> createState() => _SplashScreenActivityState();
}

class _SplashScreenActivityState extends State<SplashScreenActivity> {
  @override
  void initState() {

    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginActivity())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Image.asset("images/logo.png"),
        ),
      ),
    );
  }
}
