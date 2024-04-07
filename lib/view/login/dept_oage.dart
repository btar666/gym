import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../sheard/components.dart';
import '../home/home_sc.dart';
import 'login_mod2.dart';
import 'login_page.dart';

class dept_page extends StatelessWidget {
  var namecontroller = TextEditingController();
  var passwardcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350.h,
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(150.0)),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "اختر :",
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              height: 1.5, // line height
              letterSpacing: 0.0,
              color: Colors.white,
            ),
            //textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 20.h,
          ),
          
          SizedBox(
            height: 100.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Container(
                width: 150.w,
                height: 80.h,
                child: TextFormField(
                  readOnly: true,
                  onTap: (){
                    Get.to(login_page());
                  },
                  controller: namecontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: '  لاعب',
                    hintStyle: TextStyle(
                      fontSize:40,
                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Color(0xFF415A77),
                    contentPadding: EdgeInsets.all(10),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              Container(
                width: 150.w,
                height: 80.h,
                child: TextFormField(
                  readOnly: true,
                  onTap: (){
                    Get.to(login_mod2_page());


                  },
                  controller: namecontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: '  مدرب',
                    hintStyle: TextStyle(
                      fontSize: 40,
                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Color(0xFF415A77),
                    contentPadding: EdgeInsets.all(10),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
