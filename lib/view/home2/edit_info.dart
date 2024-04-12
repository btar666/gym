import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../sheard/cachHelper.dart';
import '../../sheard/components.dart';
import '../home/home_sc.dart';
import '../login/login_mod2.dart';

class edit_info_page extends StatelessWidget {

  String? validateTime(String? value) {
    String pattern = r'^([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$';
    RegExp regex = RegExp(pattern);
    if (value == null || !regex.hasMatch(value))
      return 'الرجاء إدخال وقت صحيح بتنسيق HH:MM:SS';
    else
      return null; // Return null for valid input
  }
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwardcontroller = TextEditingController();
  var name_gum_controller = TextEditingController();
  var time_opencontroller = TextEditingController();
  var time_closecontroller = TextEditingController();
  var discribcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 350.h,
            //   width: double.infinity,
            //   alignment: AlignmentDirectional.topStart,
            //   child: Column(
            //     children: [
            //       SizedBox(height: 45.h,),
            //       IconButton(
            //           onPressed: (){
            //           //  Get.offAll(login_mod2_page());
            //
            //           },
            //           icon:Icon( Icons.arrow_back)
            //       ),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     color: Color(0xFFD9D9D9),
            //     borderRadius:
            //     BorderRadius.only(bottomRight: Radius.circular(150.0)),
            //   ),
            // ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "تعديل المعلومات",
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
                    controller: namecontroller,
                    keyboardType: TextInputType.name,

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
                  "البريد الالكتروني",
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
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,

                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'ادخل   بريدك الالكتروني',
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
                  "كلمة المرور",
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
                    controller: passwardcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'ادخل كلمة المرور',
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
              height: 40.h,
            ),
            Container(
              color: Colors.grey,
              width: 300,
              height: 0.75,
              alignment: AlignmentDirectional.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "تعديل معلومات القاعه ",
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
              height: 40.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "اسم القاعه",
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
                    controller: name_gum_controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'ادخل اسم القاعه',
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
                  "وقت الفتح",
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
                SizedBox(width: 10,),
                Row(
                  children: [

                    Container(
                      width: 200.w,
                      child: TextFormField(
                        controller: time_opencontroller,
                        keyboardType: TextInputType.datetime,
                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9:]'))],
                        validator: validateTime,

                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: '00:00:00',
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
                  "وقت الاغلاق",
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
                SizedBox(width: 10,),
                Row(
                  children: [

                    Container(
                      width: 200.w,
                      child: TextFormField(
                        controller: time_closecontroller,
                        keyboardType: TextInputType.datetime,
                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9:]'))],
                        validator: validateTime,

                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: '00:00:00',
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
              ],
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "الوصف",
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
                  height: 150,
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    controller: discribcontroller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'ادخل وصف عن القاعه',
                      hintStyle: TextStyle(
                        fontSize: 30,
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
                Get.to(HomeSc());
              },
              text: 'تعديل المعلومات',
              background: Color(0xFF1B263B),
            ),
            SizedBox(height: 20,),
            defaultButton(
              function: () {
                CacheHelper.removeData2();

                Get.to(login_mod2_page());
              },
              text: 'تسجيل الخروج',
              background: Color(0xFF1B263B),
              width: 300,
            ),
            SizedBox(
              height: 110,
            ),
          ],
        ),
      ),
    );
  }
}
