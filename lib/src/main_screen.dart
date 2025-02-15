import 'package:flutter/material.dart';

import 'commons/resources/colors.dart';
import 'features/home_screen/home_screen.dart';
import 'features/social_screen/social_screen.dart';
import 'features/website_screen/website_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;

  final List<Widget> _widgetOptions = <Widget>[
    WebsiteScreen(),
    HomeScreen(),
    SocialScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              _widgetOptions.elementAt(_selectedIndex),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    child: BottomNavigationBar(
                      items: const <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Icon(Icons.web, size: 24),
                          label: 'Website',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home, size: 24),
                          label: 'Home',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.webhook, size: 24),
                          label: 'Social',
                        ),
                      ],
                      currentIndex: _selectedIndex,
                      backgroundColor: AppColors.cardBackground,
                      selectedItemColor: Colors.red,
                      unselectedItemColor: Colors.grey,
                      onTap: _onItemTapped,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
