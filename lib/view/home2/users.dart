import 'package:flutter/material.dart';

class usersview extends StatelessWidget {
  const usersview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "المشتركون",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
          ),
          Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10),
                itemBuilder: (context, index) {
                  return UserItem();
                },
              ))
        ],
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  const UserItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: Color(0xff0A4187))
          ]),
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
                                color: Colors.black),
                            children: [
                              TextSpan(text: "الاسم : "),
                              TextSpan(
                                  text: "تحسين" + "\n",
                                  style: TextStyle(color: Colors.white)),
                              TextSpan(text: "الاشتراك : "),
                              TextSpan(
                                  text: "30 الف شهريا" + "\n",
                                  style: TextStyle(color: Colors.white)),
                              TextSpan(text: "الوقت المتبقي : "),
                              TextSpan(
                                  text: "20بوم",
                                  style: TextStyle(color: Colors.white))
                            ])),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1B263B)),
                    child: Center(
                      child: Text(
                        "حذف",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "حذف",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff1B263B)),
                      ),
                    ),
                  )
                ],
              )
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
              ))
        ],
      ),
    );
  }
}