import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/home/route-menu.dart';
import 'package:qici/view/widgets/button.dart';

class CongraculationWidget extends StatelessWidget {
  const CongraculationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 560,
        width: 350,
        decoration: BoxDecoration(
          color: AppTheme.color.whithColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Félicitations!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppTheme.color.textColor,
              ),
            ),
            Icon(
              Icons.check_circle,
              size: 150,
              color: AppTheme.color.primaryColor,
            ),
            Text(
              textAlign: TextAlign.center,
              "L'abonnement a été réalisé avec succès. Bienvenue dans notre communauté !",
              style: TextStyle(
                color: AppTheme.color.textColor,
                fontSize: 18,
              ),
            ),
            CButton(
                title: "Accéder à la plateforme",
                onPressed: () {
                  route(context, RootApp(), close: true);
                })
          ],
        ),
      ),
    );
  }
}
