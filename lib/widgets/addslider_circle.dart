import 'package:flutter/material.dart';

Widget addSliderCircle(){
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: (
      Container(
        width: 8,
        height: 8,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4))
        ),
      )
    ),
  );
}