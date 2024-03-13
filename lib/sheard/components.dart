import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
