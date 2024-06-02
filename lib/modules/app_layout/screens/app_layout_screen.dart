import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navbartest/modules/app_layout/controllers/app_layout_cubit.dart';
import 'package:navbartest/modules/explore/screens/explore_screen.dart';
import 'package:navbartest/modules/home/screens/home_screen.dart';
import 'package:navbartest/modules/profile/screens/profile_screen.dart';
import 'package:navbartest/modules/search/screens/search_screen.dart';

/// AppLayoutScreen
class AppLayoutScreen extends StatelessWidget {
  /// AppLayoutScreen constructor
  const AppLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = <Widget>[
      const HomeScreen(),
      const SearchScreen(),
      const ExploreScreen(),
      const ProfileScreen(),
    ];

    return BlocProvider(
      create: (context) => AppLayoutCubit(),
      child: BlocBuilder<AppLayoutCubit, int>(
        builder: (context, state) {
          return Scaffold(
            body: screens[state],
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.home),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.search),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                  ),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.dashboard_sharp),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(
                      Icons.dashboard_sharp,
                      color: Colors.red,
                    ),
                  ),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.person),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: state,
              onTap: (index) =>
                  context.read<AppLayoutCubit>().changeIndex(index),
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.blue,
              type: BottomNavigationBarType.fixed,
            ),
          );
        },
      ),
    );
  }
}
