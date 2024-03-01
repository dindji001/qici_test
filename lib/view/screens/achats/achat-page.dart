import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/view/widgets/achat-page.dart';

class AchatPage extends StatelessWidget {
  const AchatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Mes Achats',
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
      body: AchatsPageWidget(),
    );
  }
}
