import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
final emailRegex = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'); // تعريف تعبير استدلالي للتحقق من البريد الإلكتروني

TextFormField defaulformfield({
  required TextEditingController controller,
  required TextInputType Type,
  String? Function(String?)? validator,
  required Function()? onTap,
  Function(String)? onSubmit,
  Function(String)? onChange,
  bool isPassword = false,
   String? lable,
  IconData? prefix,
  IconData? suffix,
  Function()? suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: Type,
      validator: (value) {
        if (validator != null) {
          String? validationResult = validator(value);
          if (validationResult != null) {
            return validationResult;
          }
        }

        if (lable == 'Email address') {
          if (value?.isEmpty ?? true) {
            return 'Please enter your email address';
          } else if (!emailRegex.hasMatch(value!)) {
            return 'Valid email must be like (example@example.com) ';
          }
        }

        return null;
      },
      onTap: onTap,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: lable,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffix),
        )
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget defaultButton({
  double width=340 ,
  double height=50,
  Color background = Colors.blueGrey,
  bool  isUpperCase=true,
  required Function() function,
  required String text,
  double radius=0.0,
  double fontSixe=23.0,
  Color textColor= Colors.white,
  String Font='Cairo',
})=> Container(
  width: width,

  child: MaterialButton(
    onPressed: function ,
    child: Text(
      isUpperCase ? text.toUpperCase(): text,
      style: TextStyle(
        fontFamily: Font,

        fontSize: fontSixe,
        fontWeight: FontWeight.w800,
        color: textColor, // تعيين شفافية النص هنا

       ),
    ),

  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15.0),
    color: background,
    border: Border.all(color: Colors.white.withOpacity(0.5), width: 1.5), // إضافة خط خارجي بلون أبيض

  ),

);