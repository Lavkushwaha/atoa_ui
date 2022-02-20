import 'package:atoa_ui/modules/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class Routes {
//HOME
  static const String home = 'home';

  static Route<dynamic>? getGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          settings: const RouteSettings(name: home),
          builder: (_) => const HomeScreen(),
        );

      default:
        return null;
    }
  }
}
