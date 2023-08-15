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
                      SliverPadding(
                        padding: EdgeInsets.only(left: 35),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            childCount: 100,
                            (context, index) {
                              return Row(
                                children: [
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
                                ],
                              );
                            },
                          ),
                        ),
                      ),
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
}
