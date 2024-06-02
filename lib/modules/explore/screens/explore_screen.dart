import 'package:flutter/material.dart';

/// ExploreScreen
class ExploreScreen extends StatelessWidget {
  /// Constructor
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Explore Screen'),
        ),
      ),
    );
  }
}
