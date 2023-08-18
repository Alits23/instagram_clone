import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Column(
          children: [
            _getTabBar(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 32,
                            left: 30,
                            bottom: 20,
                          ),
                          child: Text(
                            'New',
                            style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'GB',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      _getRow(),
                    ],
                  ),
                  Container(
                    color: greyColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getTabBar() {
    return Container(
      width: double.infinity,
      height: 70,
      color: backgroundColor1,
      child: TabBar(
        controller: _tabController,
        labelStyle: TextStyle(
          fontFamily: 'GB',
          fontSize: 20,
        ),
        indicatorColor: pinkColorIcon,
        indicatorWeight: 4,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
        tabs: [
          Tab(
            text: 'Following',
          ),
          Tab(
            text: 'You',
          ),
        ],
      ),
    );
  }

  Widget _getRow() {
    return SliverPadding(
      padding: EdgeInsets.only(left: 17),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: 100,
          (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
                right: 17,
              ),
              child: Row(
                children: [
                  Image.asset('images/dotpink.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: pinkColorIcon,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Image.asset('images/profile.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Amirahmad Adibi',
                            style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'GB',
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Start following',
                            style: TextStyle(
                              color: greyColor,
                              fontFamily: 'GB',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'you 3 min',
                        style: TextStyle(
                          color: greyColor,
                          fontFamily: 'GB',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        width: 2,
                        color: greyColor,
                      ),
                      elevation: 0,
                      backgroundColor: backgroundColor1,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Message',
                      style: TextStyle(
                        color: greyColor,
                        fontFamily: 'GB',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
