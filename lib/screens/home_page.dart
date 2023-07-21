import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: false,
        title: Container(
          width: 128,
          height: 24,
          child: Image.asset(
            'images/moodinger_logo.png',
          ),
        ),
        actions: [
          Container(
            width: 24,
            height: 24,
            margin: EdgeInsets.only(right: 18),
            child: Image.asset('images/icon_direct.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 13, left: 17),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 64,
                height: 64,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image(
                    image: AssetImage('images/icon_plus.png'),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: whiteColor, width: 2),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              getContainerStory('item4'),
              getContainerStory('item4'),
              getContainerStory('item4'),
              getContainerStory('item4'),
            ],
          ),
        ),
      ),
    );
  }

  Widget getContainerStory(String imageName) {
    return Row(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(color: pinkColorIcon, width: 2),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('images/${imageName}.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
