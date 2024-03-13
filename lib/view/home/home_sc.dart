import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym/core/local/app_color.dart';
import 'package:gym/view/home/acount.dart';
import 'package:gym/view/home/save_page.dart';

import '../../controller/home_controller.dart';
import 'home_page.dart';

class HomeSc extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (ctrl) => SafeArea(
            child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const SizedBox(width: double.infinity),
            [const HomePage(), SavePage(), Account()][homeController.index],
            _navBar()
          ],
        )),
      ),
    );
  }

  _navBar() {
    itemInNavBar(String name, int index, String text) {
      return GetBuilder<HomeController>(
        builder: (ctrl) => Expanded(
            child: InkWell(
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            homeController.index = index;
            homeController.update();
            homeController.selectedId = -1;
          },
          child: Column(
            children: [
              Image(
                  image: AssetImage('assets/icon/$name.png'),
                  color: homeController.index == index
                      ? Colors.white
                      : AppColor.secondColor,
                  height: homeController.index == index ? 34.h : 30.h,
                  width: homeController.index == index ? 34.w : 30.w),
              Text(
                text,
                style: TextStyle(
                    color: homeController.index == index
                        ? Colors.white
                        : AppColor.secondColor,
                    fontWeight: FontWeight.w500,
                    fontSize: homeController.index == index ? 14 : 13),
              )
            ],
          ),
        )),
      );
    }

    return Container(
      margin: EdgeInsets.only(bottom: 33.h),
      padding: EdgeInsets.only(right: 10.w, left: 10.w),
      height: 68,
      width: 332,
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(100))),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              itemInNavBar("home", 0, "الصفحة الرئيسية"),
              itemInNavBar("save", 1, "المحفوظات"),
              //itemInNavBar("timer", 2, "المؤقت"),
              itemInNavBar("user", 2, "المعلومات"),
            ],
          ),
          // SizedBox(height: 8.h),
        ],
      ),
    );
  }
}

//acount() {}
