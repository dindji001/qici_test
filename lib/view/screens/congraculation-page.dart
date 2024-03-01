import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/widgets/button.dart';
import 'package:qici/view/widgets/congraculation_wiget.dart';

class CongraculationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.color.primaryColor,
      body: Center(
        child: CongraculationWidget(),
      ),
    );
  }
}
