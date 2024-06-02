import 'package:flutter/material.dart';

/// HomeScreen
class SearchScreen extends StatelessWidget {
  /// Constructor
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Search Screen'),
        ),
      ),
    );
  }
}
