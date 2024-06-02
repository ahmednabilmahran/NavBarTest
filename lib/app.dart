import 'package:flutter/material.dart';
import 'package:navbartest/config/routes/app_pages.dart';

/// The root widget of the application.
class NavBarTestApp extends StatelessWidget {
  /// Construct the application.
  const NavBarTestApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
