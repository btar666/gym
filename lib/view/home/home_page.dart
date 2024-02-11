import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym/core/data/data.dart';
import 'package:gym/core/local/app_color.dart';
import 'package:gym/view/show_sc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        const Text("التمارين",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700)),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 25.h),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 192.h,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.w,
                      mainAxisSpacing: 12.h),
                  itemBuilder: (context, index) => _itemTrain(Data.parts[index].name!,index),
                  itemCount: Data.parts.length,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  _itemTrain(String name,int id) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: ()=>Get.to(ShowSc(id)),
      child: Container(
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Column(children: [
            SizedBox(height: 7.h),
            Container(
              height: 130.h,
              width: 162.w,
              decoration: const BoxDecoration(
                  color: Colors.cyanAccent,
                  image: DecorationImage(image: AssetImage('assets/images/train.png'),fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10))),
            ),
            SizedBox(height: 7.h),
            Container(
                height: 40.h,
                width: 162.w,
                decoration: BoxDecoration(
                    color: AppColor.secondColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400))))
          ])),
    );
  }
}
