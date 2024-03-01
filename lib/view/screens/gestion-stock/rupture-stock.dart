import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class RuptureStock extends StatelessWidget {
  const RuptureStock({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: AppTheme.color.whithColor),
        backgroundColor: AppTheme.color.primaryColor,
        actions: [Icon(Icons.menu_book_outlined)],
        title: Text(
          'Rupture de stock',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        elevation: 0,
      ),
    ));
  }
}
