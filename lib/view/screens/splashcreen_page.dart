import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/widgets/ProgressBarDemo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppTheme.colors.blackColor,
        body: Center(
      child: Image.asset(
        AppTheme.asset.logo2,
        width: width(context) * 0.5,
      ),
      // ProgressBarDemo()
    ));
  }
}
