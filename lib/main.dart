import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/home/tabs/quran_tab/sura_details_Screen/sura_Details_Screen.dart';
import 'package:islami/ui/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        SplashScreen.routeName : (_)=>SplashScreen(),
        HomeScreen.routeName :(_)=>HomeScreen(),
        SuraDetailsScreen.routeName :(_)=>SuraDetailsScreen()

      },

      initialRoute: SplashScreen.routeName,

    );
  }
}
