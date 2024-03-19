import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Account extends StatelessWidget {
  var namecontroller     = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350.h,
          decoration: const BoxDecoration(
            color: Color(0xFF778DA9),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100.0),
               bottomLeft: Radius.circular(100.0),
            ),
          ),
          child:  Column(
            children: [
              Center(
                child: Text(
                  "حسابك",
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                    height: 1.5, // line height
                    letterSpacing: 0.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
                SizedBox(
                  height: 60,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text(
                    "الاسم",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 27.0,
                      fontWeight: FontWeight.w700,
                      height: 1.5, // line height
                      letterSpacing: 0.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
             SizedBox(height: 10,),
              Row(

                children: [

               SizedBox(width: 20,),
               Container(
                 width: 300,
                 child: TextFormField(
                 controller: namecontroller,
                 readOnly: true, // Disable text editing
                 style: TextStyle(color: Colors.white),
                 decoration: InputDecoration(
                 hintText: '   بتار كاظم حسين',
                 hintStyle: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.w700,
                 color: Colors.white,
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
                   suffixIcon: Icon(Icons.edit,
                   color: Colors.white,
                   ),
                 ),
                 ),
               ),


                ],)



    ],
          ),
        ),
     SizedBox(height: 20,),
        Text(
          "معلومات القاعه",
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 33.0,
            fontWeight: FontWeight.w700,
            height: 1.5, // line height
            letterSpacing: 0.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.right,
        ),
        SizedBox(height: 40,),
        Row(
          children: [
            SizedBox(width: 10,),
            Text(
            "اسم القاعة :",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                letterSpacing: 0.0,
                color: Color(0xFF778DA9),
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(width: 10,),
            Text(
              "محمد خليل",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                letterSpacing: 0.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            SizedBox(width: 10,),
            Text(
              "الموقع :",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                letterSpacing: 0.0,
                color: Color(0xFF778DA9),
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(width: 10,),
            Text(
              "كريطعه",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                letterSpacing: 0.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        SizedBox(height: 20,),
         Row(
          children: [
            SizedBox(width: 10,),
            Text(
              "وقت الفتح :",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                letterSpacing: 0.0,
                color: Color(0xFF778DA9),
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(width: 10,),
            Text(
              "2:00 مساءا”",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                letterSpacing: 0.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            SizedBox(width: 10,),
            Text(
              "وقت الاغلاق :",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                letterSpacing: 0.0,
                color: Color(0xFF778DA9),
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(width: 10,),
            Text(
              "12:00 صباحا”",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                letterSpacing: 0.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ],

    );
  }
}
