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
              opacity: 0.1,
            ),
          ),
        ),
        Column(
          children: [
            Expanded(
              child: Container(
                child: Stack(
                  alignment: AlignmentDirectional.center,
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
                      top: 200,
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            width: 340,
                            height: 355,
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
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                  height: 46,
                                  width: 129,
                                  child: ElevatedButton(
                                    style: Theme.of(context)
                                        .elevatedButtonTheme
                                        .style,
                                    onPressed: () {},
                                    child: Text(
                                      'confirm',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 35),
                                Text(
                                  'switch account',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ],
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
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'GB',
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    ' / ',
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'GB', color: whiteColor),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'GB', color: whiteColor),
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
