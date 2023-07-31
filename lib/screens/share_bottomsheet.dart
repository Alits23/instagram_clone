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
          child: _getContent(),
        ),
      ),
    );
  }

  Widget _getContent() {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                color: pinkColorIcon,
              );
            },
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ],
    );
  }
}
