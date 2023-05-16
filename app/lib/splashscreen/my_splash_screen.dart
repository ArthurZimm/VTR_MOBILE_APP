import 'dart:async';
import 'package:app/screens/conector.dart';
import 'package:flutter/material.dart';
//import 'package:app/screens/login_page.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  splashScreenTimer() {
    Timer(const Duration(seconds: 4), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => conector_basic()));
    });
  }

  @override
  void initState() {
    super.initState();
    splashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 1, 1, 32),
                Color.fromARGB(255, 1, 1, 32),
                Color.fromARGB(255, 41, 70, 114),
              ])),
          child: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/logo.png'),
          )),
    );
  }
}
