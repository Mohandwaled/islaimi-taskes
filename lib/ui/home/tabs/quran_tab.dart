import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/model/sura_dm.dart';
import 'package:islami/text_styles.dart';
import 'package:islami/ui/home/tabs/quran_tab/sura_card.dart';


class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    SuraDM.generatSurasList();
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
            image: AssetImage("assets/images/hadeth.png"),
        fit: BoxFit.cover),

      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
          AppColors.black.withAlpha(70),
          AppColors.black ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,

        ),),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              children:[
                Align(
                  alignment:Alignment.center ,
                    child: Image.asset("assets/images/logo.png"
                    ,width: MediaQuery.of(context).size.width*0.6,
                    ),
                  ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "search..",
                    hintStyle: TextStyle(color: AppColors.white),
                    filled: true,
                    fillColor: AppColors.black.withAlpha(50),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ImageIcon(AssetImage("assets/Icons Nav/quran.png"),color: AppColors.gold,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: AppColors.gold),
                      borderRadius: BorderRadius.circular(16)
                    ) ,
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: AppColors.gold),
                      borderRadius: BorderRadius.circular(16),),
                   ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Suras List" ,
                    style: TextStyles.smallLabel(textColor: AppColors.white),
                ),
             ),
                SizedBox(height: 30),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.all(16),
                    itemBuilder: (context , index) =>
                        SuraCard(sura: SuraDM.surasList[index],),
                    separatorBuilder: (_ ,_ )=>Divider(indent: 50,endIndent: 50,
                      color: AppColors.white,),
                    itemCount:SuraDM.surasList.length
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
