import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({this.controller, super.key});
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: whiteColor.withOpacity(0.09),
          height: 300,
          child: _getContent(context),
        ),
      ),
    );
  }

  Widget _getContent(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    width: 67,
                    height: 5,
                    margin: EdgeInsets.only(top: 10, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      color: whiteColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 20,
                          color: whiteColor,
                        ),
                      ),
                      Image.asset('images/icon_share_bottomsheet.png'),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: whiteColor.withOpacity(0.4),
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset('images/icon_search.png'),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search User',
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _getItemGrid();
                },
                childCount: 28,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                mainAxisExtent: 110,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 90),
            ),
          ],
        ),
        Positioned(
          bottom: 47,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 45),
              child: Text(
                'Send',
                style: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getItemGrid() {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Image.asset('images/profile.png'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '@ alits23',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'GB', fontSize: 12, color: whiteColor),
        ),
      ],
    );
  }
}
