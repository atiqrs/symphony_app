import 'package:flutter/material.dart';
import 'src/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.mainScreen,
      onGenerateInitialRoutes: (initialRoute) {
        return [
          AppRouter.onGenerateRoute(
            RouteSettings(name: initialRoute),
          ),
        ];
      },
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
