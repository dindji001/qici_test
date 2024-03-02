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
          actions: [Icon(Icons.add)],
          iconTheme: IconThemeData(
            color: AppTheme.color.whithColor,
          ),
          backgroundColor: AppTheme.color.primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Invité un collaborateur',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Entrer l’adresse email de l’utilisateur que vous souhater envoyer l’invitations',
                    style: TextStyle(
                      color: AppTheme.color.backgroundTextFieldBordu,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0XffD9D9D9),
                      ),
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Color(0XffD9D9D9),
                        fontSize: 14,
                      ),
                      fillColor: AppTheme.color.backgroundTextField,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    'Attribution des Tâches',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
