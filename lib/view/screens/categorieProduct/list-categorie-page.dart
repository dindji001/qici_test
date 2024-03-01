import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class ListCategoriePage extends StatelessWidget {
  const ListCategoriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Catégories des produits',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: AppTheme.color.whithColor,
        ),
        backgroundColor: AppTheme.color.primaryColor,
      ),
    );
  }
}
