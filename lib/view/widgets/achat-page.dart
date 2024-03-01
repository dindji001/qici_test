import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class AchatsPageWidget extends StatelessWidget {
  const AchatsPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Aucun achat enregistré',
          style: TextStyle(
            color: AppTheme.color.backgroundTextFieldBordu,
          ),
        ),
      ),
    );
  }
}
