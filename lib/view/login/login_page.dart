import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/login_controller.dart';
import '../../sheard/components.dart';
import '../home/home_sc.dart';
import 'dept_oage.dart';

class login_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<login_Controller>(
        init: login_Controller(),
    builder: (controller) =>Scaffold(
      body: Column(
        children: [
          Container(
            height: 350.h,
            width: double.infinity,
            alignment: AlignmentDirectional.topStart,
            child: Column(
              children: [
                SizedBox(height: 45.h,),
                IconButton(
                    onPressed: (){
                      Get.offAll(dept_page());

                    },
                    icon:Icon( Icons.arrow_back)
                ),
              ],
            ),
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
            "تسجيل الدخول",
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
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                "الاسم",
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  height: 1.5, // line height
                  letterSpacing: 0.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.w,
              ),
              Container(
                width: 355.w,
                child: TextFormField(
                  controller: controller.namecontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'ادخل   اسمك',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w700,
                      color: Colors.blueGrey,
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
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                "الكود",
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  height: 1.5, // line height
                  letterSpacing: 0.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.w,
              ),
              Container(
                width: 355.w,
                child: TextFormField(
                  controller: controller.codecontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'ادخل الكود',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w700,
                      color: Colors.blueGrey,
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
          SizedBox(
            height: 55,
          ),
          defaultButton(
            function: () {
             controller.loginPlayer();
            },
            text: 'التالي',
            background: Color(0xFF1B263B),
          ),
        ],
      ),
    ),
    );


  }
}
