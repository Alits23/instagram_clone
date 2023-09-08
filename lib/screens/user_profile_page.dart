import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                bottom: PreferredSize(
                  child: Container(
                    height: 14,
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        )),
                  ),
                  preferredSize: Size.fromHeight(10),
                ),
                backgroundColor: backgroundColor1,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/item0.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: Container(
            child: Container(
              color: backgroundColor1,
            ),
          ),
        ),
      ),
    );
  }

  Widget _getHeaderProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: pinkColorIcon,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/profile.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 70,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ali TAshakori',
                    style: TextStyle(
                      color: whiteColor,
                      fontFamily: 'SM',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Alits23',
                    style: TextStyle(
                      color: greyColor,
                      fontFamily: 'SM',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Image.asset('images/icon_profile_edit.png'),
        ],
      ),
    );
  }
}
