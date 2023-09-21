import 'package:flutter/material.dart';
import 'package:instagram/constants/colors/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedBottomNavigationItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor1,
        currentIndex: _selectedBottomNavigationItem,
        onTap: (int index) {
          setState(() {
            _selectedBottomNavigationItem = index;
          });
        },
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_home.png'),
            activeIcon: Image.asset('images/icon_active_home.png'),
            label: 'item 1',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_search_navigation.png'),
            activeIcon: Image.asset('images/icon_search_navigation_active.png'),
            label: 'item 2',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_add_navigation.png'),
            activeIcon: Image.asset('images/icon_add_navigation_active.png'),
            label: 'item 3',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/icon_activity_navigation.png'),
            activeIcon:
                Image.asset('images/icon_activity_navigation_active.png'),
            label: 'item 4',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: greyColor,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/profile.png'),
                ),
              ),
            ),
            activeIcon: Container(
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: pinkColorIcon,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/profile.png'),
                ),
              ),
            ),
            label: 'item 4',
          ),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedBottomNavigationItem,
          children: _getLayout(),
        ),
      ),
    );
  }

  List<Widget> _getLayout() {
    return <Widget>[
      Container(
        color: Colors.amber,
      ),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
    ];
  }
}
