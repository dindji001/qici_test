import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class StatistiquePage extends StatelessWidget {
  const StatistiquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Mes statistiques',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        actions: [Icon(Icons.filter_list)],
        iconTheme: IconThemeData(
          color: AppTheme.color.whithColor,
        ),
        backgroundColor: AppTheme.color.primaryColor,
      ),
    );
  }
}
