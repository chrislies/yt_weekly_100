import 'package:flutter/material.dart';
import 'package:yt_weekly_100/locator.dart';
import 'package:yt_weekly_100/services/navigation_service.dart';

// To keep styling consistent within the navbar, utilize a public navbar item class
class NavBarItem extends StatelessWidget {
  // Takes in a string 'title', and other parameters
  final ImageProvider? img;
  final double? imgWidth;
  final double? imgHeight;
  final String? title;
  final String navigationPath;
  const NavBarItem({
    super.key,
    this.img,
    this.imgWidth,
    this.imgHeight,
    this.title,
    required this.navigationPath,
  }); // Initialize the string title

  @override
  Widget build(BuildContext context) {
    // Root of navbar item will be a text widget
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Row(
        children: [
          if (img != null) // Conditionally show the image if it's not null
            Image(image: img!, width: imgWidth, height: imgHeight),
          if (title != null) // Conditionally show the title if it's not null
            Text(
              title!,
              style: const TextStyle(fontSize: 18),
            ),
        ],
      ),
    );
  }
}
