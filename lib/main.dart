import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor_app_sample/presentation/screens/loading_screen.dart';

void main(List<String> args) {
  runApp(const VendorApp());
}

class VendorApp extends StatelessWidget {
  const VendorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Poppins",
            textTheme: const TextTheme(
                headline6: TextStyle(
              fontSize: 19.16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ))),
        home: const LoadingScreen(),
      );
    });
  }
}
