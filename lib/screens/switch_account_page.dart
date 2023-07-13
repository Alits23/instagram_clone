import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class SwitchAccountPage extends StatelessWidget {
  const SwitchAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pattern1.png'),
              repeat: ImageRepeat.repeat,
              opacity: 0.2,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'images/switch_account_background.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 44),
                            child: Container(
                              width: 340,
                              height: 352,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromRGBO(255, 255, 255, 0.5),
                                    Color.fromRGBO(255, 255, 255, 0.2),
                                  ],
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 32),
                                  Image(
                                    image: AssetImage('images/profile.png'),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'Ali Tashakori',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 20),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: pinkColorIcon,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'confirm',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: whiteColor,
                                        ),
                                      )),
                                  SizedBox(height: 45),
                                  Text(
                                    'switch account',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 132, bottom: 63),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(fontSize: 16, color: whiteColor),
                  ),
                  Text(
                    ' / ',
                    style: TextStyle(fontSize: 16, color: whiteColor),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16, color: whiteColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
