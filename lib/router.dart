import 'package:flutter/material.dart';
import 'package:flutter_amazon/features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.route:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const AuthScreen());
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text('Error 404 route not found'),
                ),
              ));
  }
}
