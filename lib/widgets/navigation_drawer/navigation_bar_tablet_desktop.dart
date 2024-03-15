import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yt_weekly_100/routing/route_names.dart';
import 'package:yt_weekly_100/views/home/home_view.dart';
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
          SizedBox(
            child: NavBarItem(
              img: AssetImage("assets/yt100.png"),
              navigationPath: HomeRoute,
              imgWidth: 120,
              imgHeight: 120,
            ),
          ),
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
