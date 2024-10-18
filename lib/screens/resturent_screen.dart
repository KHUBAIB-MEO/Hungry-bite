import 'package:flutter/material.dart';
import 'package:hungry_bite/widgets/resturent_top_icon.dart';

class ResturentScreen extends StatefulWidget {
  const ResturentScreen({super.key});

  @override
  State<ResturentScreen> createState() => _ResturentScreenState();
}

class _ResturentScreenState extends State<ResturentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          height: 540,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/Background.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                width: 250,
                height: 200,
                color: Colors.amber,
              ),
              Row(
                children: [
                 resutrent_top_icons(icon: const Icon(Icons.arrow_back_outlined)),
                 Padding(
                   padding: const EdgeInsets.only(left: 100.0),
                   child: resutrent_top_icons(icon: const Icon(Icons.favorite)),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 8.0),
                   child: resutrent_top_icons(icon: const Icon(Icons.keyboard_control)),
                 ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
