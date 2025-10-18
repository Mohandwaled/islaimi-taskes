import 'package:flutter/material.dart';
import 'package:islami/app_colors.dart';
import 'package:islami/model/sura_dm.dart';
import 'package:islami/text_styles.dart';

import 'sura_details_Screen/sura_Details_Screen.dart';
/*

class SuraCard extends StatelessWidget {
  final SuraDM sura;

  const SuraCard({required this.sura, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Stack(
          children: [
            Image.asset("assets/images/Vector.png",width:40)          ],
        )
      ]
    );
  }
}
*/
class SuraCard extends StatelessWidget {
  final SuraDM sura;


  const SuraCard({required this.sura, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.pushNamed(context, SuraDetailsScreen.routeName , arguments:sura );

      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/Vector.png", width: 45),
              Text(
                sura.suraNumber.toString(),
                style: TextStyles.smallLabel(textColor: AppColors.white),
              ),
            ],
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sura.nameEn,
                  style: TextStyles.mediumLabel(textColor: AppColors.white),
                ),
                Text(
                  sura.ayatNumber,
                  style: TextStyles.mediumBody(textColor: AppColors.white),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Text(
            sura.nameAr,
            style: TextStyles.mediumLabel(textColor: AppColors.white),
          ),
        ],
      ),
    );
  }
}
