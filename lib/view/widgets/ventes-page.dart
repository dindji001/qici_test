import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class VentesPageWidget extends StatelessWidget {
  const VentesPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Aucune vente enregistrer',
          style: TextStyle(
            color: AppTheme.color.backgroundTextFieldBordu,
          ),
        ),
      ),
    );
  }
}
