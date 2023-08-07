import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  _getSearchBox(),
                  _getItemList(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: GridView.custom(
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  pattern: [
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 2),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
                      color: pinkColorIcon,
                    );
                  },
                ),
              ),
            )
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
          margin: EdgeInsets.only(left: 17, right: 17, top: 12),
          height: 46,
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.all(Radius.circular(13)),
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
                width: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getItemList() {
    return Container(
      height: 23,
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 17),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 14),
            width: 60,
            height: 23,
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                'Account $index',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'GM',
                  fontSize: 10,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _getPostGrid() {
    return Container(
      width: 128,
      height: 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          image: AssetImage('images/Rectangle 33.png'),
        ),
      ),
    );
  }
}
