import 'package:flutter/material.dart';
import 'package:yt_weekly_100/routing/route_names.dart';
import 'package:yt_weekly_100/widgets/navigation_drawer/navbar_item.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              child: NavBarItem(
                img: AssetImage("assets/yt100.png"),
                navigationPath: HomeRoute,
                imgWidth: 70,
                imgHeight: 70,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ]),
    );
  }
}
