import 'package:doc_app/config/routes/routes_path.dart';
import 'package:doc_app/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this argument is used to pass data from one screen to another
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutePath.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return null;
    }
    return null;
  }
}
