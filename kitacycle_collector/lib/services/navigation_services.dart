import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigateToWithArgs(String routeName, Object args) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
