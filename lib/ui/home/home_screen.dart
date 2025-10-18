import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/ui/home/tabs/hadeth_tab.dart';
import 'package:islami/ui/home/tabs/quran_tab.dart';
import 'package:islami/ui/home/tabs/radio_tab.dart';
import 'package:islami/ui/home/tabs/sebha_tab.dart';
import 'package:islami/ui/home/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/homeScreen";

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget>tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  tabs[selectedIndex],
      backgroundColor: AppColors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:selectedIndex,
          onTap: (index){selectedIndex=index;
          setState(() {

          });},
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.gold,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.black,
          items: [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/Icons Nav/quran.png")),label: "Quran"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/Icons Nav/hadeth.png")),label: "Hadeth"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/Icons Nav/sebha.png")),label: "Sebha"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/Icons Nav/radio.png")),label: "Radio"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/Icons Nav/time.png")),label: "Time"),
      ]),

    );
  }
}
