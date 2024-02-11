import 'package:flutter/material.dart';
import 'package:gym/core/local/app_color.dart';

getThemeData(){
  return ThemeData(
    fontFamily: 'cairo',
    scaffoldBackgroundColor:AppColor.backgroundColor,
    primaryColor: AppColor.primaryColor,
    cardColor: AppColor.secondColor
  );
}