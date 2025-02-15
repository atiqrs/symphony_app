import 'package:flutter/material.dart';
import 'main_screen.dart';

class AppRouter {
  /// Route names
  static const String mainScreen = 'mainScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name!);
    final name = uri.pathSegments.isNotEmpty ? uri.pathSegments[0] : '';

    late final Widget page;

    switch (name) {
      case AppRouter.mainScreen:
        page = const MainScreen();
        break;
      default:
        page = const MainScreen();
    }

    return MaterialPageRoute(
      builder: (_) => page,
      settings: settings,
    );
  }
}
