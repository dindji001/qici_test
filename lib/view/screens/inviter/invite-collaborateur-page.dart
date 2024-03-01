import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/joel-mani/list-precommande.dart';
import 'package:qici/view/widgets/button.dart';

class InviteCollaborateurPage extends StatelessWidget {
  const InviteCollaborateurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Inviter un utilisateur',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: AppTheme.color.whithColor,
        ),
        backgroundColor: AppTheme.color.primaryColor,
      ),
      body: Center(
        child: CButton(
          title: 'Aller Precommander',
          onPressed: () {
            route(
              context,
              Listeprecommande(),
            );
          },
        ),
      ),
    );
  }
}
