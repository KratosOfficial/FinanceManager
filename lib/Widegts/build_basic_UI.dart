import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/Image String.dart';

Widget build_Container(String text, image) {
  return Column(
    children: [
      Container(
        padding:
        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: SvgPicture.asset(
          image,
          width: 20,
        ),
      ),
      SizedBox(height: 10,),
      Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w500),
      )
    ],
  );
}
