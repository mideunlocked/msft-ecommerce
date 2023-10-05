import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

import '../widgets/bottom_nav_widget/bottom_nav_widget.dart';
import 'bottom_nav_screens/cart_screen.dart';
import 'bottom_nav_screens/categories_screen.dart';
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
  final scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();

    pageController.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      ShopScreen(
        scrollController: scrollController,
      ),
      const CategoriesScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // home screen pages with page view
          PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (index) => setState(() {
              currentIndex = index;
            }),
            children: pages,
          ),

          // custom bottom nav
          AnimatedBuilder(
            animation: scrollController,
            builder: (context, child) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                height: scrollController.hasClients &&
                        scrollController.position.userScrollDirection ==
                            ScrollDirection.reverse
                    ? 0
                    : 10.h,
                child: child,
              );
            },
            child: BottomNavWidget(
              pageController: pageController,
              currentIndex: currentIndex,
            ),
          ),
        ],
      ),
    );
  }
}
