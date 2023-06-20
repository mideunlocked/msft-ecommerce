import 'package:flutter/material.dart';
import 'package:msft/screens/bottom_nav_screens/cart_screen.dart';
import 'package:msft/screens/bottom_nav_screens/categories_screen.dart';
import 'package:msft/screens/bottom_nav_screens/fits_screen.dart';
import 'package:msft/screens/bottom_nav_screens/profile_screen.dart';
import 'package:sizer/sizer.dart';

import '../widgets/bottom_nav_widget/bottom_nav_icon.dart';
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
          Container(
            height: 7.h,
            width: 100.w,
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.2.h),
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              color: Colors.black,
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BottomNavIcon(
                  currentIndex: currentIndex,
                  index: 0,
                  iconUrl: "assets/icons/clothes-hanger.png",
                ),
                BottomNavIcon(
                  currentIndex: currentIndex,
                  index: 1,
                  iconUrl: "assets/icons/category.png",
                ),
                BottomNavIcon(
                  currentIndex: currentIndex,
                  index: 2,
                  iconUrl: "assets/icons/movie.png",
                ),
                BottomNavIcon(
                  currentIndex: currentIndex,
                  index: 3,
                  iconUrl: "assets/icons/shopping-cart.png",
                ),
                BottomNavIcon(
                  currentIndex: currentIndex,
                  index: 4,
                  iconUrl: "assets/icons/user.png",
                ),
              ],
            ),
          ),
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
