import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'screens/home_screen.dart';

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
