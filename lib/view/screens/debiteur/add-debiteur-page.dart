import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class AddDebiteurPage extends StatelessWidget {
  const AddDebiteurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Enregistrer un débiteur',
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
