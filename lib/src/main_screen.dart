import 'package:flutter/material.dart';

import 'commons/resources/colors.dart';
import 'commons/resources/dimens.dart';
import 'commons/resources/strings.dart';
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
                bottom: AppDimens.positionUnSign2,
                left: AppDimens.position0,
                right: AppDimens.position0,
                child: Container(
                  height: AppDimens.height100,
                  decoration: BoxDecoration(
                    color: AppColors.borderBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppDimens.radius32),
                      topRight: Radius.circular(AppDimens.radius32),
                    ),
                    border: Border.all(
                      width: AppDimens.spacing2,
                      color: AppColors.borderBackground,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppDimens.radius32),
                      topRight: Radius.circular(AppDimens.radius32),
                    ),
                    child: BottomNavigationBar(
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Icon(Icons.web, size: AppDimens.size24),
                          label: AppStrings.website,
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home, size: AppDimens.size24),
                          label: AppStrings.home,
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.webhook, size: AppDimens.size24),
                          label: AppStrings.social,
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
