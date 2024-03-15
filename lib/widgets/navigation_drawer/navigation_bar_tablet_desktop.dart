import 'package:flutter/material.dart';
import 'package:yt_weekly_100/routing/route_names.dart';
import 'package:yt_weekly_100/widgets/navigation_drawer/navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("YouTube Weekly 100"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: "Videos", navigationPath: HomeRoute),
              SizedBox(width: 60),
              NavBarItem(title: "Favorites", navigationPath: FavoutesRoute),
              SizedBox(width: 60),
              NavBarItem(title: "Account", navigationPath: AccountRoute),
            ],
          ),
        ],
      ),
    );
  }
}
