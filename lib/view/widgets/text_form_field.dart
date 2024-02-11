import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym/core/local/app_color.dart';

myTextFormField(
    {double width = 277, double height = 64, String hint = "اسم المستخدم",bool isPass = false}) {
  return Container(
    width: width,
    height: height,
    child: TextFormField(
      obscureText: isPass,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 12.h,left: 10.w,right: 10.w),
        labelText: hint,
        labelStyle: const TextStyle(color: Colors.black),
        hintStyle: const TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          gapPadding: 5,
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          gapPadding: 5,
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            gapPadding: 5,
            borderSide: const BorderSide(color: Colors.black, width: 1.5)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            gapPadding: 5,
            borderSide: const BorderSide(color: Colors.red, width: 1)),

      ),
    ),
  );
}
