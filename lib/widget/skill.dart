import 'package:flutter/material.dart';

Widget skill(BuildContext context, String? data) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey.shade400,
      borderRadius: BorderRadius.circular(20),
    ),

    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        data ?? "",
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}
