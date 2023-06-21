import 'package:flutter/material.dart';

import '../widgets/bottom_nav_widget/bottom_nav_widget.dart';
import 'bottom_nav_screens/cart_screen.dart';
import 'bottom_nav_screens/categories_screen.dart';
import 'bottom_nav_screens/fits_screen.dart';
import 'bottom_nav_screens/profile_screen.dart';
import 'bottom_nav_screens/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    super.dispose();

    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // home screen pages with page view
          PageView(
            controller: pageController,
            onPageChanged: (index) => setState(() {
              currentIndex = index;
            }),
            children: pages,
          ),

          // custom bottom nav
          BottomNavWidget(
              pageController: pageController, currentIndex: currentIndex),
        ],
      ),
    );
  }
}

List<Widget> pages = [
  const ShopScreen(),
  const CategoriesScreen(),
  const FitsScreen(),
  const CartScreen(),
  const ProfileScreen(),
];
