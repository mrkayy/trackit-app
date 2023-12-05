import 'package:flutter/material.dart';
import 'package:trackit_app/presentation/tracking_detail_screen/tracking_detail_screen.dart';
import 'package:trackit_app/presentation/login_screen/login_screen.dart';
import 'package:trackit_app/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:trackit_app/presentation/track_screen/track_screen.dart';
// import 'package:trackit_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String trackingDetailScreen = '/tracking_detail_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String trackScreen = '/track_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    trackingDetailScreen: (context) => TrackingDetailScreen(),
    loginScreen: (context) => LoginScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    trackScreen: (context) => TrackScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}
