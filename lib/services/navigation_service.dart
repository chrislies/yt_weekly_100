import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) async {
    final navigatorState = navigatorKey.currentState;
    if (navigatorState != null) {
      return navigatorState.pushNamed(routeName);
    }
    throw Exception('Navigator state is null');
  }

  void goBack() {
    final navigatorState = navigatorKey.currentState;
    if (navigatorState != null) {
      navigatorState.pop();
    }
  }
}
