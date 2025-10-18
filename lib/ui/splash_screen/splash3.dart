import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'splash2.dart';

class Splash3 extends StatefulWidget {
  @override
  _Splash3State createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/splash1.png'), // حط الصورة اللي عايزها هنا
      ),
    );
  }
}
