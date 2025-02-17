import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'commons/resources/assets.dart';
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

  TextStyle selectedLabelStyle = TextStyle(
    color: AppColors.selectedTextColor,
    fontWeight: FontWeight.w500,
    fontSize: AppDimens.textSize14,
  );

  TextStyle unselectedLabelStyle = TextStyle(
    color: AppColors.unselectedTextColor,
    fontWeight: FontWeight.w500,
    fontSize: AppDimens.textSize14,
  );

  ColorFilter? colorFilter(bool value) {
    return ColorFilter.mode(
      value ? AppColors.selectedIconRedColor : AppColors.unselectedIconColor,
      BlendMode.srcIn,
    );
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
                    color: AppColors.borderColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppDimens.radius32),
                      topRight: Radius.circular(AppDimens.radius32),
                    ),
                    border: Border.all(
                      width: AppDimens.spacing2,
                      color: AppColors.borderColor,
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
                          icon: SvgPicture.asset(AppAssets.iconWebsite, colorFilter: colorFilter(_selectedIndex == 0)),
                          label: AppStrings.website,
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(AppAssets.iconHome, colorFilter: colorFilter(_selectedIndex == 1)),
                          label: AppStrings.home,
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(AppAssets.iconSocial, colorFilter: colorFilter(_selectedIndex == 2)),
                          label: AppStrings.social,
                        ),
                      ],
                      currentIndex: _selectedIndex,
                      backgroundColor: AppColors.cardBackgroundColor,
                      selectedLabelStyle: selectedLabelStyle,
                      unselectedLabelStyle: unselectedLabelStyle,
                      useLegacyColorScheme: false,
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
