import 'package:flutter/material.dart';
import 'package:yt_weekly_100/locator.dart';
import 'package:yt_weekly_100/services/navigation_service.dart';

// To keep styling consistent within the navbar, utilize a public navbar item class
class NavBarItem extends StatelessWidget {
  // Takes in a string 'title'
  final String title;
  final String navigationPath;
  const NavBarItem(
      {super.key,
      required this.title,
      required this.navigationPath}); // Initialize the string title

  @override
  Widget build(BuildContext context) {
    // Root of navbar item will be a text widget
    return GestureDetector(
      onTap: () {
        // Don't use a service directly in the UI to change any kind of state
        // Services should only be used from a viewmodel
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
