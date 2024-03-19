import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gym/core/local/app_color.dart';
import 'package:gym/view/home/home_sc.dart';
import 'package:gym/view/login/login_page.dart';
import 'core/local/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child!,
              );
            },
            home: login_page(),
            locale: const Locale('ar'),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
    fontFamily: 'cairo',
    scaffoldBackgroundColor:AppColor.backgroundColor,
    primaryColor: AppColor.primaryColor,
    cardColor: AppColor.secondColor
  ),
          );
        },
        designSize: const Size(414, 896));
  }
}
