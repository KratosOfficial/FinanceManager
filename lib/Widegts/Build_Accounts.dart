import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget build_accounts(String text, image, String text2, color) {
  return Container(
    padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 55),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: SvgPicture.asset(image, color: Colors.white,),),
        SizedBox(height: 8,),
        Text(
          text ,
          style:
          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ],
    ),
  );
}
