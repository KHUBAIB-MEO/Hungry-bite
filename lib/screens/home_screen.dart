import 'package:flutter/material.dart';
import 'package:hungry_bite/widgets/addslider_circle.dart';
import 'package:hungry_bite/widgets/catergories_show.dart';
import 'package:hungry_bite/widgets/show_add.dart';
import 'package:hungry_bite/widgets/show_hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            child: Center(
              child: SizedBox(
                width: 250,
                height: 540,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/Background.jpg", // Make sure to add your image in the assets folder
                      fit: BoxFit.cover, // Cover the entire screen
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    //Image.asset("assets/images/Background.jpg"),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              Container(
                                height: 40,
                                width: 130,
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Delivery",
                                      style: TextStyle(
                                          color: const Color(0xFFffffff)
                                              .withOpacity(0.6)),
                                    ),
                                    const Text(
                                      "Maplewood Suites",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color:
                                        const Color(0xFF000000).withOpacity(0.5),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Image.asset("assets/images/cycle.png"),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 230, // Adjust the height as needed
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search...",
                                hintStyle: const TextStyle(color: Colors.white),
                                prefixIcon:
                                    const Icon(Icons.search, color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      8), // Optional: round the corners
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 230,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Categories",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Text(
                                  "see all",
                                  style: TextStyle(
                                      color: const Color(0xffffffff)
                                          .withOpacity(0.6),
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Container(
                              height: 90,
                              color: Colors.transparent,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 12,
                                itemBuilder: (context, index) {
                                  return showCategories();
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: Container(
                              height: 150,
                              color: Colors.transparent,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return showAdd();
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              addSliderCircle(),
                              addSliderCircle(),
                              addSliderCircle(),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Fastest near you",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                          showHotel(),
                          showHotel(),
                          showHotel(),
                          showHotel(),
                          showHotel(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 240,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff000000).withOpacity(0.5),
                            gradient: LinearGradient(colors: [Color(0xff)]),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
