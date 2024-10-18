import 'package:flutter/material.dart';

Widget showHotel() {
  return (Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
        width: 230,
        height: 150,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Container(
              width: 230,
              height: 110,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            const SizedBox(height: 15,),
            Align(
              alignment: Alignment.center,
              child: Text("Hotel Name",style: TextStyle(color: Colors.white),),
            ),
          ],
        )),
  ));
}
