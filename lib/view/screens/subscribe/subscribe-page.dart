import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/subscribe/payement-page.dart';
import 'package:qici/view/widgets/button.dart';

class SubcribePage extends StatelessWidget {
  const SubcribePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppTheme.asset.logo2,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Text(
                    'Souscrire a votre abonnement',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.color.textColor,
                    ),
                  ),
                  Text(
                    "En tant qu'abonné, vous bénéficierez d'un accès exclusif à des fonctionnalités avancées, de mises à jour régulières et d'un support premium. Souscrivez dès maintenant pour libérer le vrai potentiel de votre gestion commerciale et transformer la façon dont vous gérez votre entreprise. L'avenir de votre entreprise commence avec un abonnement à QICI.",
                    style: TextStyle(
                      color: AppTheme.color.textColor,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 172, 226),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 3,
                        color: AppTheme.color.primaryColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2, right: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "15.000 FCFA / Mois",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.color.textColor,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppTheme.color.secondaryColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 15,
                              ),
                              child: Text(
                                'Plus populaire',
                                style: TextStyle(
                                  color: AppTheme.color.whithColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "facturé mensuellement comme paiement récurrent Cet abonnement vous confère le droit d'accéder à 3 utilisateurs. ",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 180,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 3,
                        color: AppTheme.color.primaryColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 2, left: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "50.000 FCFA / An",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.color.textColor,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "facturé mensuellement comme paiement récurrent économisez 33 % en payant annuellement. Cet abonnement vous confère le droit d'accéder à 6 utilisateurs. ",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CButton(
                title: 'Souscrire',
                onPressed: () {
                  route(context, PayementPage());
                },
                width: width(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
