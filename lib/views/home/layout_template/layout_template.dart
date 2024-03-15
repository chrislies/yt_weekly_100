import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yt_weekly_100/locator.dart';
import 'package:yt_weekly_100/routing/route_names.dart';
import 'package:yt_weekly_100/routing/router.dart';
import 'package:yt_weekly_100/services/navigation_service.dart';
import 'package:yt_weekly_100/widgets/centered_view/centered_view.dart';
import 'package:yt_weekly_100/widgets/navigation_drawer/navigation_bar.dart';
import 'package:yt_weekly_100/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          endDrawer:
              sizingInformation.deviceScreenType == DeviceScreenType.mobile
                  ? const NavDrawer()
                  : null,
          backgroundColor: Theme.of(context).colorScheme.background,
          body: CenteredView(
            child: Column(
              children: [
                const NavBar(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
