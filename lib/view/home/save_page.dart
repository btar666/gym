import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gif_view/gif_view.dart';
import 'package:gym/controller/home_controller.dart';
import 'package:gym/controller/show_controller.dart';
import 'package:gym/core/data/data.dart';
import 'package:gym/core/local/app_color.dart';
import 'package:gym/view/show_sc.dart';

class SavePage extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder:(ctrl) => Column(
        children: [
          SizedBox(height: 20.h),
          Stack(
            children: [
              const SizedBox(width: double.infinity),
              const Align(
                alignment: Alignment.center,
                child: Text("المحفوظات",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700)),
              ),
              homeController.selectedId  == -1 ? const SizedBox(): Container(
                   alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 24.w),
                    child: InkWell(onTap: (){
                      homeController.selectedId != -1;
                      homeController.selectedId = -1;
                      homeController.update();

                    }, child: Icon(Icons.arrow_forward,size: 40,color: Colors.white,))
                )

            ],
          ),
          homeController.selectedId != -1 ?Container(
              width: double.infinity,
              height: 260.h,
              color: Colors.white,
              child: GifView.asset(
                'assets/trains/${homeController.selectedId}.gif',
                height: 200,
                width: 200,
                frameRate:  Data.exercise[homeController.selectedId].frame, // default is 15 FPS
              )
          ):const SizedBox(),
          homeController.save.isNotEmpty ? const SizedBox() : const Spacer(),
          homeController.save.isNotEmpty ? const SizedBox() : const Center(child: Text("لا يوجد تمارين محفوظة",style: TextStyle(fontSize:25,color: Colors.white70),)),
          homeController.save.isNotEmpty ? const SizedBox():SizedBox(height: 150.h),
          homeController.save.isNotEmpty ? const SizedBox() : const Spacer(),
          homeController.save.isEmpty ? const SizedBox() : Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => SizedBox(height: 8.h),
                      itemBuilder: (context, index) => _trainItem(
                        Data.exercise[homeController.save[index]].name!,
                        Data.exercise[homeController.save[index]].details!,
                        Data.exercise[homeController.save[index]].part!,
                        Data.exercise[homeController.save[index]].id!,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: homeController.save.length,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _trainItem(String name,String det,String part,int id){
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: (){
        homeController.selectedId = id;
        homeController.update();
      },
      child: Container(
        padding: EdgeInsets.only(right: 9.w,left: 20.w),
        width: 372.w,
        height: 80.h,
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
        child: Row(
          children: [
            // Icon(Icons.check_circle,color: AppColor.grayApp,size: 24),
            SizedBox(width: 11.w),
            Container(
                width:59.w,height:59.h,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(image: AssetImage('assets/images/train.png'))
                )),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                SizedBox(height: 12.h),
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15
                  ),
                ),
                Text(
                  part,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                  ),
                )

              ],
            ),
            const Spacer(),
            InkWell(
                onTap: (){
                  homeController.unSave(id);
                  homeController.update();
                },
                child: Image(width: 45.w,height: 45.h,image: homeController.isSaved(id)?AssetImage('assets/icon/un_mark.png'):AssetImage('assets/icon/mark.png')))


          ],
        ),
      ),
    );
  }
}
