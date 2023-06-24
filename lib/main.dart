import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:msft/data/product_data.dart';
import 'package:sizer/sizer.dart';

import 'screens/home_screen.dart';
import 'firebase_options.dart';
import 'widgets/product_tile/product_preview_dialog.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

void showProductEnlargeedPreview(BuildContext context) {
  showDialog(
    context: context,
    builder: (ctx) => ProductPreviewWidget(
      data: products.first,
    ),
  );
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
