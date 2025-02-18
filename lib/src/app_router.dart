import 'package:flutter/material.dart';
import 'features/lso_query_screen/lso_query_screen.dart';
import 'features/specification_screen/specification_screen.dart';
import 'features/support_screen/support_screen.dart';
import 'main_screen.dart';

class AppRouter {
  /// Route names
  static const String mainScreen = 'mainScreen';
  static const String specificationScreen = 'specificationScreen';
  static const String supportScreen = 'supportScreen';
  static const String lsoQueryScreen = 'lsoQueryScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name!);
    final name = uri.pathSegments.isNotEmpty ? uri.pathSegments[0] : '';

    late final Widget page;

    switch (name) {
      case AppRouter.mainScreen:
        page = const MainScreen();
        break;
      case AppRouter.specificationScreen:
        page = const SpecificationScreen();
        break;
      case AppRouter.supportScreen:
        page = const SupportScreen();
        break;
      case AppRouter.lsoQueryScreen:
        page = const LsoQueryScreen();
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
