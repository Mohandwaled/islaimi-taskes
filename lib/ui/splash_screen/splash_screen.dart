import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/splash_screen/splash1.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName="/splashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      body:Stack(
        alignment: Alignment.center,
        children: [
          ZoomIn(child:
          Center(
            child: Image.asset("assets/images/islami_logo.png",width: size.width *0.4,),
          ),),
         Positioned(
           bottom: 32,
             child: ZoomIn(child:  Image.asset("assets/images/route_logo.png",width: size.width *0.6,),
             ),)
        ],

      ),
    );
  }
}
