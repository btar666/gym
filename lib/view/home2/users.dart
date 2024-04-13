import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import '../../controller/login_controller.dart';
import '../../sheard/player.dart';

class usersview extends StatelessWidget {
  //const usersview({required Key key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<login_Controller>(
      init: login_Controller(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                "المشتركون",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: ConditionalBuilder(
                  condition: controller.users.length>0,
                  builder: (context) => SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.users.length,
                          itemBuilder: (context, index) =>userbelder(
                              controller.users[index]
                        ),

                          separatorBuilder:  (  context,  index) =>SizedBox(
                          height: 10.0,
                        ),
                        ),
                      ],
                    ),
                  ),
                  fallback: (context) => Center(child: CircularProgressIndicator()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget userbelder(player user)=>Card(
  // clipBehavior: Clip.antiAliasWithSaveLayer,
  // elevation: 5.0,
  child:  Container(

  padding: EdgeInsets.all(15),
  margin: EdgeInsets.all(25),
  height: 169,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color(0xff778DA9),
    boxShadow: [
      BoxShadow(
        blurRadius: 27.8,
        spreadRadius: 0,
        offset: Offset(0, 0),
        color: Color(0xff0A4187),
      ),
    ],
  ),
  child: Stack(
    clipBehavior: Clip.none,
    children: [
      Column(
        textDirection: TextDirection.rtl,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: [
              SizedBox(
                width: 200,
                child: RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: "الاسم : "),
                      TextSpan(
                        text: user.name! + "\n",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(text: "الاشتراك : "),
                      TextSpan(
                        text: user.description! + "\n",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(text: "الكود : "),
                      TextSpan(
                        text: user.code,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1B263B),
                ),
                child: Center(
                  child: Text(
                    "حذف",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                    },
                    child: Text(
                      "تعديل",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff1B263B),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Positioned(
        top: -45,
        right: 28,
        child: Container(
          height: 80,
          width: 80,
          decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        ),
      ),
    ],
  ),
),
    );



