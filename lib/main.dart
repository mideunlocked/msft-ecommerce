import 'package:flutter/material.dart';
import 'package:msft/data/product_data.dart';
import 'package:sizer/sizer.dart';

import 'widgets/product_tile/product_tile.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[200],
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16.sp,
              fontWeight: FontWeight.w900,
            ),
            bodyMedium: TextStyle(
              fontFamily: "Poppins",
              fontSize: 11.sp,
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var data = products.first;

    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5.sp,
          crossAxisSpacing: 2.sp,
          mainAxisExtent: 45.h,
        ),
        itemBuilder: (ctx, index) => ProductTile(data: data),
      ),
    );
  }
}
