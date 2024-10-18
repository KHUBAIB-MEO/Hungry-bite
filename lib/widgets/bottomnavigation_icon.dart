import 'package:flutter/material.dart';

Widget bottomNavigationBarIcon({required Icon icon, required String name}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      icon,
      //const SizedBox(height: 4), 
      Text(name,style: const TextStyle(color: Colors.white,fontSize: 10),),
    ],
  );
}
