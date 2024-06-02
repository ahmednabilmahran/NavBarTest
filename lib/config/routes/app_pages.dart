import 'package:flutter/material.dart';
import 'package:navbartest/config/routes/app_routes.dart';
import 'package:navbartest/core/utils/app_strings.dart';
import 'package:navbartest/modules/app_layout/screens/app_layout_screen.dart';
import 'package:navbartest/modules/splash/presentation/screens/splash_screen.dart';

/// Application routes
class AppRoutes {
  /// this method is used to generate the routes
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
          settings: const RouteSettings(name: Routes.initialRoute),
        );

      case Routes.appLayoutRoute:
        return MaterialPageRoute(
          builder: (context) {
            return const AppLayoutScreen();
          },
          settings: const RouteSettings(name: Routes.appLayoutRoute),
        );

      default:
        return undefinedRoute();
    }
  }

  /// this method is used to undefinedRoute the routes
  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('undefinedRoute'),
        ),
      ),
      settings: const RouteSettings(name: AppStrings.noRouteFound),
    );
  }
}
