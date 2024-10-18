import 'package:flutter/material.dart';

Widget showAdd() {
  return (Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 230,
      height: 150,
      decoration: BoxDecoration(
          color: const Color(0xFF000000).withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 150,
            child: (Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "30 %",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Discover discounts in your favorite local restaurants",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFFFFFFFF).withOpacity(0),
                          const Color(0xFF0F55E8),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        "Order",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.amber,
          )
        ],
      ),
    ),
  ));
}
