import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shipping_address/src/app_config/app_bloc_provider_resolver.dart';
import 'package:shipping_address/src/app_config/app_routes.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: AppBlocProviderResolver.repositoriesProviders,
      child: MultiBlocProvider(
        providers: AppBlocProviderResolver.blocProviders,
        child: MaterialApp.router(
          title: 'Shopping Address demo',
          debugShowCheckedModeBanner: false,
          theme: _theme(),
          routerConfig: AppRoutes.appRoutes,
        ),
      ),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xffa77d44),
        secondary: const Color(0xffFFF8F3),
        // onSurface: const Color(0xff4A3C31),
      ),
    );
  }
}
