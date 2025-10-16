import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shipping_address/src/feature/account/presentation/account_screen.dart';
import 'package:shipping_address/src/feature/categories/presentation/categories_screen.dart';
import 'package:shipping_address/src/feature/dashboard/bloc/dash_board_bottom_nav_index_cubit.dart';
import 'package:shipping_address/src/feature/home/presentation/home_screen.dart';
import 'package:shipping_address/src/feature/shopping/presentation/shopping_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const ShoppingScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    context.read<DashBoardBottomNavIndexCubit>().updateIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<DashBoardBottomNavIndexCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: _screens[state],
          bottomNavigationBar: CustomLineIndicatorBottomNavbar(
            selectedColor: theme.colorScheme.primary,
            unSelectedColor: theme.colorScheme.onSurface.withValues(alpha: 0.6),
            backgroundColor: Colors.white,
            currentIndex: state,
            unselectedIconSize: 20,
            selectedIconSize: 22,
            onTap: _onItemTapped,
            enableLineIndicator: true,
            lineIndicatorWidth: 2,
            indicatorType: IndicatorType.top,
            customBottomBarItems: [
              CustomBottomBarItems(
                label: 'Home',
                icon: Icons.home_outlined,
                // assetsImagePath: accountImage,
                isAssetsImage: false,
              ),
              CustomBottomBarItems(
                label: 'Category',
                icon: Icons.category_outlined,
                // assetsImagePath: accountImage,
                isAssetsImage: false,
              ),
              CustomBottomBarItems(
                label: 'Shopping',
                icon: Icons.shopping_cart_outlined,
                // assetsImagePath: accountImage,
                isAssetsImage: false,
              ),
              CustomBottomBarItems(
                label: 'Account',
                icon: Icons.person_2_outlined,
                // assetsImagePath: accountImage,
                isAssetsImage: false,
              ),
            ],
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home_outlined),
          //       label: 'Home',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.category_rounded),
          //       label: 'Categories',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.shopping_cart),
          //       label: 'Shopping',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.person),
          //       label: 'Account',
          //     ),
          //   ],
          //   currentIndex: state,
          //   onTap: _onItemTapped,
          //   type: BottomNavigationBarType.fixed,
          //   landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          //   showSelectedLabels: true,
          //   selectedItemColor: theme.colorScheme.primary,
          //   unselectedItemColor: theme.colorScheme.onSurface,
          // ),
        );
      },
    );
  }
}
