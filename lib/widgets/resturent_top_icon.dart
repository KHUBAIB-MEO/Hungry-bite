import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget resutrent_top_icons({required Icon icon}) {
  return (Container(
    width: 44,
    height: 44,
    decoration: BoxDecoration(
        color: const Color(0xff000000).withOpacity(0.5),
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    child: icon,
  ));
}
