import 'package:flutter/material.dart';
import 'package:porfolio_app/const.dart';
import 'package:porfolio_app/util.dart';

Widget skill(BuildContext context, String? data) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey.shade400,
      borderRadius: BorderRadius.circular(20),
    ),

    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        data ?? "",
        style: TextStyle(
          fontSize: adjustFontSize(screenWidth, body),
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}
