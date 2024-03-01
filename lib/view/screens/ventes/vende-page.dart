import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/view/widgets/ventes-page.dart';

class VentesPage extends StatelessWidget {
  const VentesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Mes ventes',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
        iconTheme: IconThemeData(
          color: AppTheme.color.whithColor,
        ),
        backgroundColor: AppTheme.color.primaryColor,
      ),
      body: VentesPageWidget(),
    );
  }
}
