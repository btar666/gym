import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../sheard/components.dart';

class Account extends StatelessWidget {
  final TextEditingController namecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Container(
          height: 300.h,
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
                    color: Color(0xFFE0E1DD),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    " الاسم ",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      height: 1.5, // line height
                      // letterSpacing: 0.0,
                      color: Color(0xFFE0E1DD),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children:[
                  SizedBox(width: 45,),
                  Container(
                    width: 300,
                        child:
                        TextFormField(
                          controller: namecontroller,
                          readOnly: true,
                          style: TextStyle(color: Colors.white), // Set the text color to white
                          decoration: InputDecoration(
                            hintText: '   بتار كاظم حسين',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: Color(0xFF415A77),
                            contentPadding: EdgeInsets.all(10), // Add some padding to the text field content
                            labelStyle: TextStyle(color: Colors.white), // Set the label color to white

                            enabledBorder: OutlineInputBorder( // Set border color when the field is enabled
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(color: Colors.transparent), // Make border color transparent
                            ),
                            focusedBorder: OutlineInputBorder( // Set border color when the field is focused
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(color: Colors.transparent), // Make border color transparent
                            ),
                          ),
                        )

                  )



                ],
              )
            ],
          ),
        ),
           SizedBox(height: 30,),

        Row(
          children: [
            SizedBox(width: 20,),
            Text(
              " اسم القاعة :",
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                height: 1.5, // line height
                // letterSpacing: 0.0,
                color: Color(0xFFE0E1DD),
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ],
    );
  }
}
