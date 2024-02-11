import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gif_view/gif_view.dart';
import 'package:gym/controller/home_controller.dart';
import 'package:gym/controller/show_controller.dart';
import 'package:gym/core/data/data.dart';
import 'package:gym/core/local/app_color.dart';
class ShowSc extends StatelessWidget {
  ShowController showController = Get.put(ShowController());
  HomeController homeController = Get.put(HomeController());
  ShowSc(this.id, {super.key});
  int? id;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShowController>(
      builder:(ctrl)=> Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(Data.parts[id!].name!,style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w500)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:  showController.selectedId != -1 ?InkWell(
            onTap: (){
              homeController.setSave(showController.selectedId);
              homeController.update();
              showController.update();
            },
              child: Container(
                margin: EdgeInsets.only(right: 10.w,top: 10.h),
                // height: 40.h,
                //   width: 40.w,
                  // padding: EdgeInsets.all(8),
                  child: Image(image: homeController.isSaved(showController.selectedId)?AssetImage('assets/icon/un_mark.png'):AssetImage('assets/icon/mark.png')))
          ):const SizedBox(),
          actions: [
            Container(
                margin: EdgeInsets.only(left: 24.w),
                child: InkWell(onTap: (){
                  if(showController.selectedId != -1){
                    showController.selectedId = -1;
                    showController.update();
                  }else {
                    Get.back();
                  }
                }, child: Icon(Icons.arrow_forward,size: 40,))
            )
          ],
        ),
        body: SafeArea(
            child: Column(
              children: [
                showController.selectedId != -1 ?Container(
                  width: double.infinity,
                  height: 260.h,
                  color: Colors.white,
                  child: GifView.asset(
                    'assets/trains/${showController.selectedId}.gif',
                    height: 200,
                    width: 200,
                    frameRate:  Data.exercise[showController.selectedId].frame, // default is 15 FPS
                  )
                ):const SizedBox(),
                Expanded(
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
                              Data.exercise[Data.parts[id!].exercises![index]].name!,
                              Data.exercise[Data.parts[id!].exercises![index]].details!,
                              Data.exercise[Data.parts[id!].exercises![index]].id!,
                            ),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: Data.parts[id!].exercises!.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
        )),
    );
  }
  _trainItem(String name,String det,int id){
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: (){
        showController.selectedId = id;
        showController.update();
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
            Icon(Icons.check_circle,color: AppColor.grayApp,size: 24),
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
                  det,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                  ),
                )

              ],
            ),
            const Spacer(),
            Icon(Icons.play_circle,color: AppColor.grayApp,size:38),


          ],
        ),
      ),
    );
  }
}
