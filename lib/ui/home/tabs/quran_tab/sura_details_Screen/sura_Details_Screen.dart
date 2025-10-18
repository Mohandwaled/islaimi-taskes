

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/model/sura_dm.dart';
import 'package:islami/text_styles.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = " /suradetails";
   SuraDetailsScreen ({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
   late SuraDM sura;

   String? content;

  @override
  Widget build(BuildContext context) {
    sura = ModalRoute.of(context)?.settings.arguments as SuraDM;
    if(content == null){
      readSuraDetails(sura.suraNumber);
    }

    return  Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.gold,
        title: Text(sura.nameEn , style: TextStyles.mediumLabel(textColor: AppColors.gold),) ,
      ),

      body: content==null
          ? Center(child: CircularProgressIndicator(),)
          : Directionality( textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                      children: [
                        Transform.scale(scale:1.75,
                        child: Image.asset("assets/images/img_right_corner.png",)),
                        Expanded(child: Text(sura.nameAr,style:
                        TextStyles.mediumLabel(),textAlign: TextAlign.center, ) ),
                        Transform.scale(scale: 1.75,
                            child: Image.asset("assets/images/img_left_corner.png",))
                      ],
                    ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(16),
                    child: Text(content ?? "", style: TextStyles.largeBody(),

                          textAlign: TextAlign.center,
                          ),
                  ),
                ),
                Image.asset("assets/Icons Nav/img_bottom_decoration.png"),
              ],
            ),
          ),
    );
  }

  Future<void> readSuraDetails(int suraNumber) async
  {
    String suraContent = await rootBundle.loadString(
        "assets/suras/$suraNumber.txt"
    );
    List<String> suraAyas = suraContent.trim().split("\n");
    suraContent = "";
    for(int i=0 ; i<suraAyas.length;i++){
      suraContent = "$suraContent [${i+1} ] ${suraAyas[i].trim()}";
    }
    content = suraContent ;
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      
    });

  }
}
