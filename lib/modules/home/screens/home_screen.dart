import 'package:flutter/material.dart';

/// HomeScreen
class HomeScreen extends StatelessWidget {
  /// Constructor
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
