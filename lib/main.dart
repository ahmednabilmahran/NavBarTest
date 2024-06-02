import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navbartest/app.dart';
import 'package:navbartest/core/utils/bloc_observer.dart';

/// A global key that will uniquely identify the Navigator
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  // Ensures that widget-binding is initialized.
  // This is required because plugins might be called before runApp.
  WidgetsFlutterBinding.ensureInitialized();

  // Set the global Bloc observer for better debugging and logging.
  Bloc.observer = AppBlocObserver();

  runApp(const NavBarTestApp());
}
