import 'package:flutter/material.dart';
import 'package:weatherapp/config/routes/routes.dart';
import 'package:weatherapp/screens/home/home_screen.dart';
import 'package:weatherapp/screens/onboarding/onboarding_screen.dart';

class Pages {
  static Route<dynamic> onGeneratingRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(
    builder: (context) {
      return Scaffold(body: Center(child: Text('Error Route')));
    },
  );
}
