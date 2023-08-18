import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';
import 'package:instagram/model/enums/activity_type_enum.dart';

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
                  _getSampleList(),
                  Container(
                    color: backgroundColor1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getSampleList() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
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
        SliverPadding(
          padding: EdgeInsets.only(left: 17),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 3,
              (context, index) {
                return _getRow(ActivityStatus.likes);
              },
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 30,
              bottom: 20,
            ),
            child: Text(
              'Today',
              style: TextStyle(
                color: whiteColor,
                fontFamily: 'GB',
                fontSize: 16,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 17),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 2,
              (context, index) {
                return _getRow(ActivityStatus.following);
              },
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 17),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 3,
              (context, index) {
                return _getRow(ActivityStatus.likes);
              },
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 30,
              bottom: 20,
            ),
            child: Text(
              'This week',
              style: TextStyle(
                color: whiteColor,
                fontFamily: 'GB',
                fontSize: 16,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 17),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 4,
              (context, index) {
                return _getRow(ActivityStatus.followback);
              },
            ),
          ),
        ),
      ],
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

  Widget _getRow(ActivityStatus status) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
        right: 17,
      ),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              color: pinkColorIcon,
              shape: BoxShape.circle,
            ),
          ),
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
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('images/profile.png'),
              ),
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
                    'AmirahmadAdibi',
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
              Row(
                children: [
                  Text(
                    'you',
                    style: TextStyle(
                      color: greyColor,
                      fontFamily: 'GB',
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '3 min',
                    style: TextStyle(
                      color: greyColor,
                      fontFamily: 'GB',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          _getActionActivityRow(status)
        ],
      ),
    );
  }

  Widget _getActionActivityRow(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.followback:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: pinkColorIcon,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Follow',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
              color: whiteColor,
            ),
          ),
        );

      case ActivityStatus.following:
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: greyColor,
              width: 2,
            ),
          ),
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
              color: whiteColor,
            ),
          ),
        );

      case ActivityStatus.likes:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/item0.png'),
            ),
          ),
        );

      default:
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: greyColor,
              width: 2,
            ),
          ),
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
              color: whiteColor,
            ),
          ),
        );
    }
  }
}
