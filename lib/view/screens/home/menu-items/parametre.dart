import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/view/widgets/setting-page.dart';

class ParametrePage extends StatelessWidget {
  const ParametrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Paramètres',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: AppTheme.color.whithColor,
        ),
        backgroundColor: AppTheme.color.primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SettingPageWidget(),
      ),
    );
  }
}
