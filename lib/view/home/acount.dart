import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300.h,
          decoration: const BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100.0),
              bottomLeft: Radius.circular(100.0),
            ),
          ),
          child: const Column(
            children: [
              Center(
                child: Text(
                  "حسابك",
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                    height: 1.5, // line height
                    letterSpacing: 0.0,
                    color: Color.fromRGBO(2, 22, 34, 1),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Text(
                "الاسم",
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  height: 1.5, // line height
                  letterSpacing: 0.0,
                  color: Color.fromRGBO(2, 22, 34, 1),
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
