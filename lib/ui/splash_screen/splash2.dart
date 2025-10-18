import 'package:flutter/material.dart';
import 'package:islami/ui/splash_screen/splash3.dart';
import 'splash2.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Splash3()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/splash1.png'), // حط الصورة اللي عايزها هنا
      ),
    );
  }
}
