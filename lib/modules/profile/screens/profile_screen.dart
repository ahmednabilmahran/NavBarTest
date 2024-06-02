import 'package:flutter/material.dart';

/// ProfileScreen
class ProfileScreen extends StatelessWidget {
  /// Constructor
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Profile Screen'),
        ),
      ),
    );
  }
}
