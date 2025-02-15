import 'package:flutter/material.dart';

import '../../commons/resources/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.blackBackgroundColor, body: Container());
  }
}
