import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vendor_app_sample/resources/style_resources.dart';
import 'package:vendor_app_sample/presentation/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: StyleResources.splashScreenBgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splashlogo1.png',
                width: 50.w,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 3.w,
              ),
              SizedBox(
                child: Text(
                  'Vendor App',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
