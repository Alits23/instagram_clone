import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Column(
          children: [
            _getSearchBox(),
            SizedBox(height: 20),
            _getItemList(),
          ],
        ),
      ),
    );
  }

  Widget _getSearchBox() {
    return Column(
      children: [
        SizedBox(
          height: 17,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 17),
          height: 46,
          decoration: BoxDecoration(
            color: Color.fromRGBO(39, 43, 64, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(13),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Image.asset('images/icon_search.png'),
              SizedBox(
                width: 11.29,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 16,
                      color: whiteColor,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Image.asset('images/icon_scan.png'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getItemList() {
    return Container(
      padding: EdgeInsets.only(left: 17),
      height: 23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 15),
            width: 60,
            height: 23,
            decoration: BoxDecoration(
              color: Color.fromRGBO(39, 43, 64, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                'Hashtag',
                style: TextStyle(
                    color: whiteColor, fontFamily: 'GB', fontSize: 10),
              ),
            ),
          );
        },
      ),
    );
  }
}
