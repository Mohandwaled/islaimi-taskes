import 'app_colors.dart';
import 'package:flutter/material.dart';
abstract class TextStyles {
  static TextStyle largeTitle({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 24,
      color: textColor,
      fontWeight: FontWeight.w900,
      fontFamily: "janna",
    );
  }

  static TextStyle mediumTitle({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 22,
      color: textColor,
      fontWeight: FontWeight.w900,
      fontFamily: "janna",
    );
  }

  static TextStyle smallTitle({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 20,
      color: textColor,
      fontWeight: FontWeight.w900,
      fontFamily: "janna",
    );
  }

  static TextStyle largeLabel({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 22,
      color: textColor,
      fontWeight: FontWeight.w900,
      fontFamily: "janna",
    );
  }

  static TextStyle mediumLabel({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 20,
      color: textColor,
      fontWeight: FontWeight.w900,
      fontFamily: "janna",
    );
  }

  static TextStyle smallLabel({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 18,
      color: textColor,
      fontWeight: FontWeight.w900,
      fontFamily: "janna",
    );
  }

  static TextStyle largeBody({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 16,
      color: textColor,
      fontWeight: FontWeight.w600,
      fontFamily: "janna",
    );
  }

  static TextStyle mediumBody({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 14,
      color: textColor,
      fontWeight: FontWeight.w600,
      fontFamily: "janna",
    );
  }

  static TextStyle smallBody({Color textColor = AppColors.gold}) {
    return TextStyle(
      fontSize: 12,
      color: textColor,
      fontWeight: FontWeight.w600,
      fontFamily: "janna",
    );
  }
}