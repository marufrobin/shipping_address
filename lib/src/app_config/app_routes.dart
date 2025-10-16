import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shipping_address/src/feature/shopping/presentation/add_shipping_address_screen.dart';

import '../feature/dashboard/presentation/dashboard_screen.dart';
import '../feature/splash_screen/presentation/splash_screen.dart';

class AppRoutesNames {
  static const String splashScreen = '/';
  static const String dashboard = '/dashboard';
  static const String addAddress = '/add-address';
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
      GoRoute(
        name: AppRoutesNames.addAddress,
        path: AppRoutesNames.addAddress,
        builder: (context, state) => const AddShippingAddressScreen(),
      ),
    ],
  );
}
