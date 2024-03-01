import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class StockDisponible extends StatelessWidget {
  const StockDisponible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: AppTheme.color.whithColor),
        backgroundColor: AppTheme.color.primaryColor,
        title: Text(
          'Stock Disponible',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        elevation: 0,
      ),
    );
  }
}
