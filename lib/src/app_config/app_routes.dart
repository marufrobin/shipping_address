import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../feature/dashboard/presentation/dashboard_screen.dart';
import '../feature/splash_screen/presentation/splash_screen.dart';


class AppRoutesNames {
  static const String splashScreen = '/';
  static const String dashboard = '/dashboard';
}

GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static final appRoutes = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoutesNames.splashScreen,
    routes: [
      GoRoute(
        name: AppRoutesNames.splashScreen,
        path: AppRoutesNames.splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: AppRoutesNames.dashboard,
        path: AppRoutesNames.dashboard,
        builder: (context, state) => const DashboardScreen(),
      ),

    ],
  );
}