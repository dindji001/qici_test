import 'package:flutter/material.dart';

class AppTheme {
  static final color = _color();
  static final asset = _Asset();
  static final assetSvg = _AssetSvg();
}

class _color {
  final primaryColor = Color(0xFF4F0573);
  final degradePrimaryColor = Color.fromARGB(127, 78, 5, 115);
  final secondaryColor = Color(0xFFFF8500);
  final whithColor = Color(0xffFFFFFF);
  final textColor = Color(0xFF2B2525);
  final backgroundTextField = Color(0XFFF3F3F3);
  final backgroundTextField2 = Color(0XFFFCF3F6);
  final backgroundTextFieldBordu = Color(0XFFA8A8A9);
  final orangeColor = Color(0xFFFF8500);
}

class _Asset {
  final logo = "assets/images/logo.png";
  final logo2 = "assets/images/logo2.png";
  final backgroundImage = "assets/images/background.png";
  final facebook = "assets/images/facebook.png";
  final apple = "assets/images/apple.png";
  final google = "assets/images/google.png";
}

class _AssetSvg {
  final business = "assets/svg/undraw_business_deal_re_up4u.svg";
  final ideas = "assets/svg/undraw_ideas_flow_re_bmea 1.svg";
  final spreadsheet = "assets/svg/undraw_spreadsheet_re_cn18 1.svg";
  final stripe_payments = "assets/svg/undraw_stripe_payments_re_chlm.svg";
}
