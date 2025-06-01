import 'package:flutter/material.dart';
import 'package:flutterfirst/core/colors_manager.dart';
import 'package:flutterfirst/details_screen.dart';
import 'package:flutterfirst/home_screen.dart';
import 'package:flutterfirst/order_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // layer 1
          Image.asset(
            "assets/images/coffee.png",
            fit: BoxFit.cover,
            height: 702,
          ),
          // layer 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Coffee so good, your taste buds will love it.",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "The best grain, the finest roast, the powerful flavor.",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(169, 169, 169, 1),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    ColorsManager.selectedscreen = "d";
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context)=>HomeScreen()));
                  },
                  child: Container(
                    width: 317,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logos/google.png',
                          width: 33,
                          height: 33,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Continue With Google",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 0.54),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}