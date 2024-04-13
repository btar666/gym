
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:gym/view/home2/users.dart';

import '../../controller/home_controller.dart';
import '../../controller/login_controller.dart';
import '../../sheard/components.dart';
import '../home/home_sc.dart';

class Adduser extends StatelessWidget {

 // const Adduser({super.key});
  HomeController HomeController1=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<login_Controller>(
        init: login_Controller(),
    builder: (controller) => SingleChildScrollView(

      child: Column(
        children: [
          Container(
            height: 350.h,
            width: double.infinity,
            alignment: AlignmentDirectional.topStart,
            child: Column(
              children: [
                SizedBox(height: 45.h,),
                // IconButton(
                //     onPressed: (){
                //       //  Get.offAll(login_mod2_page());
                //
                //     },
                //     icon:Icon( Icons.arrow_back)
                // ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(150.0)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              mainAxisSize: MainAxisSize.max,
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: Text(
                    "اضافة مشترك",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 30, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اسم المشترك",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 18, color: Colors.white),
                ),
                TextField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textDirection: TextDirection.rtl,
                  controller: controller.namecontroller ,
                  decoration: InputDecoration(
                      hintText: "ادخل اسم المشترك",
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      contentPadding: EdgeInsets.all(15),
                      fillColor: Color(0xff415A77),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30))),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "كود المشترك",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 18, color: Colors.white),
                ),
                TextField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textDirection: TextDirection.rtl,
                  controller: controller.codecontroller,
                  decoration: InputDecoration(
                      hintText: "ادخل كود المشترك",
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      contentPadding: EdgeInsets.all(15),
                      fillColor: Color(0xff415A77),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30))),
                ),
                SizedBox(
                  height: 20,
                ),

                Text(
                  "وصف الاشتراك",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 18, color: Colors.white),
                ),
                TextField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textDirection: TextDirection.rtl,
                  controller: controller.discribcontroller,
                  decoration: InputDecoration(
                      hintText: "ادخل وصف المشترك",
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      contentPadding: EdgeInsets.all(15),
                      fillColor: Color(0xff415A77),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30))),
                ),
                SizedBox(height: 80,),
                Row(
                  children: [
                    SizedBox(width: 7,),
                    defaultButton(
                      function: () async {
                       await controller.adduser();
                        controller.onInit();
                        HomeController1.index=0;
                      },
                      text: 'اضافه مشترك',
                      background: Color(0xFF1B263B),
                    ),
                  ],
                ),

                SizedBox(height: 120,),

              ],
            ),
          ),
        ],
      ),
    ),
    );

  }
}