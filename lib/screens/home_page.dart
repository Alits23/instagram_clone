import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';
import 'package:dotted_border/dotted_border.dart';

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
      body: SafeArea(
        child: Center(
          child: Container(
            width: 394,
            height: 440,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('images/post_cover.png'),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: Image.asset('images/icon_video.png'),
                ),
                Positioned(
                  bottom: 15,
                  child: Container(
                    width: 340,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: pinkColorIcon,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/icon_hart.png'),
                        Image.asset('images/icon_comments.png'),
                        Image.asset('images/icon_share.png'),
                        Image.asset('images/icon_save.png'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getStoryBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      color: pinkColorIcon,
      dashPattern: [40, 10],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          width: 38,
          height: 38,
          child: Image.asset('images/profile.png'),
        ),
      ),
    );
  }

  Widget _getHeaderPost() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          _getStoryBox(),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ali Tashakori',
                  style: TextStyle(
                    fontFamily: 'GB',
                    fontSize: 12,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'برنامه نویس فلاتر',
                  style: TextStyle(
                    fontFamily: 'SM',
                    fontSize: 12,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert_outlined,
            color: whiteColor,
          )
        ],
      ),
    );
  }

/* For me
  Widget getlistStory() {
    return Padding(
      padding: const EdgeInsets.only(left: 17, top: 13, right: 11),
      child: Container(
        height: 90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: backgroundColor1,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/item4.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'data',
                    style: TextStyle(
                      fontFamily: 'GS',
                      fontSize: 10,
                      color: whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget getPost() {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 13),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: pinkColorIcon, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: backgroundColor1, width: 2),
                        ),
                        child: Image.asset(
                          'images/profile.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ali Tashakori',
                          style: TextStyle(
                            fontFamily: 'GB',
                            fontSize: 12,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'برنامه نویس فلاتر',
                          style: TextStyle(
                            fontFamily: 'SM',
                            fontSize: 12,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                ),
                color: whiteColor,
              ),
            ],
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 394,
                height: 394,
                child: Image.asset(
                  'images/post_cover.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 381,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: whiteColor,
                  ),
                  width: 340,
                  height: 46,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  */
}
