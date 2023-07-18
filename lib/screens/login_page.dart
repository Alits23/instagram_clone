import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode1.addListener(() {
      setState(() {});
    });
    focusNode2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              getPictureLogin(),
              getInfo(context),
            ],
          )),
    );
  }

  Widget getPictureLogin() {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Image(
          image: AssetImage('images/rocket.png'),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }

  Widget getInfo(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        SizedBox(
          height: 45,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(36),
              ),
              color: backgroundColor1,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in to ',
                        style: TextStyle(
                            fontFamily: 'GB', fontSize: 20, color: whiteColor),
                      ),
                      Image(
                        image: AssetImage('images/mood.png'),
                        height: 25,
                        width: 102,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18, left: 44, right: 44),
                    child: TextField(
                      focusNode: focusNode1,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 3, color: greyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 3,
                            color: pinkColorIcon,
                          ),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'GB',
                          color:
                              focusNode1.hasFocus ? pinkColorIcon : whiteColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 44, right: 44),
                    child: TextField(
                      focusNode: focusNode2,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 3, color: greyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 3,
                            color: pinkColorIcon,
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'GB',
                          color:
                              focusNode2.hasFocus ? pinkColorIcon : whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 46,
                    width: 129,
                    child: ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style,
                      onPressed: () {},
                      child: Text(
                        'sign in',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 16),
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
                              fontSize: 16,
                              fontFamily: 'GB',
                              color: whiteColor),
                        ),
                        Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'GB',
                              color: whiteColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    super.dispose();
  }
}
