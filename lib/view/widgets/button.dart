import 'package:flutter/material.dart';
mybutton(
    Function function,
    {
  double height = 100,
  double width = 100,
  String text = "",
  Color color = Colors.red,
  Color borderColor = Colors.red,
  Color textColor = Colors.white,
  double textSize = 20,
  FontWeight fontWeight = FontWeight.bold,
}){
  return  SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shadowColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(color: borderColor)
                ))),
      onPressed: () { function();},
      child: Text(text,style: TextStyle(fontSize: textSize,fontWeight: fontWeight,color: textColor)),
    ),
  );
}