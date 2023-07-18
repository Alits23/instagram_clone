import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 128,
              height: 16,
              child: Image.asset(
                'images/moodinger_logo.png',
                fit: BoxFit.cover,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('images/icon_direct.png'),
              splashRadius: 0.01,
            ),
          ],
        ),
        backgroundColor: backgroundColor1,
        elevation: 0,
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
