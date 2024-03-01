import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/categorieProduct/list-categorie-page.dart';
import 'package:qici/view/screens/debiteur/debiteur-list.dart';
import 'package:qici/view/screens/creancier/all-creancier-page.dart';
import 'package:qici/view/screens/statistique/stistique-page.dart';
import 'package:qici/view/widgets/button.dart';
import 'package:qici/view/widgets/container-widget.dart';

class ProfilUserPage extends StatelessWidget {
  const ProfilUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profil  Utilisateur',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: AppTheme.color.whithColor,
        ),
        backgroundColor: AppTheme.color.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppTheme.asset.utilisateur),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CButton(
                      title: 'Voir mes dettes',
                      onPressed: () {},
                      width: width(context) * 0.49,
                      sideWidth: 3,
                      sideColor: AppTheme.color.primaryColor,
                      color: AppTheme.color.whithColor,
                      titleColor: AppTheme.color.primaryColor,
                    ),
                    CButton(
                      title: 'Mes créances',
                      width: width(context) * 0.49,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(107, 213, 154, 243),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 8, right: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications_active,
                        size: 30,
                        color: AppTheme.color.primaryColor,
                      ),
                      Text(
                        'Information urgente',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.color.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'La liste des invités',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage(AppTheme.asset.utilisateur),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dindji Severin Wilfried',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Invité',
                                    style: TextStyle(
                                      color: AppTheme.color.secondaryColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Detail',
                              style: TextStyle(
                                color: AppTheme.color.secondaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                ContenaireWidget(
                  urlImageContenaire: AppTheme.asset.statistique,
                  nomImageContenaire: 'Mes statistiques',
                  urlNextPageContenaire: StatistiquePage(),
                ),
                ContenaireWidget(
                  urlImageContenaire: AppTheme.asset.category,
                  nomImageContenaire: 'Catégories des produits',
                  urlNextPageContenaire: ListCategoriePage(),
                ),
                ContenaireWidget(
                  urlImageContenaire: AppTheme.asset.creancier,
                  nomImageContenaire: 'Mes Creancier',
                  urlNextPageContenaire: AllCreancier(),
                ),
                ContenaireWidget(
                  urlImageContenaire: AppTheme.asset.debiteur,
                  nomImageContenaire: 'Mes débiteur',
                  urlNextPageContenaire: DebiteurListPage(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
