import 'package:flutter/material.dart';
import 'package:hungry_bite/screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController getEmail = TextEditingController();
  final TextEditingController getPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          height: 540,
          child: Stack(
            children: [
              Image.asset("assets/images/Background.jpg"),
              Padding(
                padding: const EdgeInsets.only(left: 70.0, top: 30),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 140.0, left: 65),
                child: Text(
                  "Hungry Bite",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 170.0, left: 3),
                child: Text(
                  "Deliver Favourite Food",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200.0, left: 25),
                child: Container(
                  width: 200,
                  height: 220,
                  decoration: const BoxDecoration(
                      color: Color(0xFF1D102D),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sign up",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFF1D102D),
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: TextField(
                          controller: getEmail,
                          style: const TextStyle(color: Colors.white,fontSize: 15),
                          decoration: const InputDecoration(
                            hintText: "abc@gmail.com",
                            hintStyle: TextStyle(color: Colors.white,fontSize: 15),
                              prefixIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFF1D102D),
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: TextField(
                          controller: getEmail,
                          style: const TextStyle(color: Colors.white,fontSize: 15),
                          decoration: const InputDecoration(
                            hintText: "abc@gmail.com",
                            hintStyle: TextStyle(color: Colors.white,fontSize: 15),
                              prefixIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFF1D102D),
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: TextField(
                          controller: getPass,
                          style: const TextStyle(color: Colors.white,fontSize: 15),
                          decoration: const InputDecoration(
                            hintText: "password",
                            hintStyle: TextStyle(color: Colors.white,fontSize: 15),
                              prefixIcon: Icon(
                            Icons.password,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 170,
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
                          onPressed: () {
                            // Your onPressed logic here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: const Text(
                            "Sign up",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 430.0,left: 60),
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white,fontSize: 13),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 450.0,left: 100),
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
