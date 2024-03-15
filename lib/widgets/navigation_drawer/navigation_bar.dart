import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yt_weekly_100/widgets/navigation_drawer/navigation_bar_mobile.dart';
import 'package:yt_weekly_100/widgets/navigation_drawer/navigation_bar_tablet_desktop.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const NavigationBarMobile(),
      tablet: (BuildContext context) => const NavigationBarTabletDesktop(),
    );
  }
}
