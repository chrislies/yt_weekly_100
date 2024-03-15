import 'package:flutter/material.dart';
import 'package:yt_weekly_100/views/account/account_view.dart';
import 'package:yt_weekly_100/views/favorites/favorites_view.dart';
import 'package:yt_weekly_100/views/home/home_view.dart';
import 'package:yt_weekly_100/routing/route_names.dart';
import 'package:yt_weekly_100/views/videos/videos_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView());
    case AccountRoute:
      return _getPageRoute(AccountView());
    case VideosRoute:
      return _getPageRoute(const VideosView());
    case FavoutesRoute:
      return _getPageRoute(const FavoritesView());
    default:
      return _getPageRoute(Container());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
