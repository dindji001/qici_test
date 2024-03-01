import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/home/home-body.dart';
import 'package:qici/view/screens/setting/setting-page.dart';
import 'package:qici/view/widgets/button.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.color.primaryColor,
        iconTheme: IconThemeData(color: AppTheme.color.whithColor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  color: AppTheme.color.whithColor,
                  size: 25,
                ),
                Positioned(
                  right: 3,
                  top: 2,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: AppTheme.color.secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppTheme.color.secondaryColor,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: AppTheme.color.whithColor,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage(
                            AppTheme.asset.utilisateur,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Dindji Severin',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                          color: AppTheme.color.secondaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Particuler',
                          style: TextStyle(
                            color: AppTheme.color.whithColor,
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
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Historiques des ventes',
                            style: TextStyle(
                              color: AppTheme.color.textColor,
                            ),
                          ),
                        ),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Historiques des achats',
                            style: TextStyle(
                              color: AppTheme.color.textColor,
                            ),
                          ),
                        ),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Services assistances',
                            style: TextStyle(
                              color: AppTheme.color.textColor,
                            ),
                          ),
                        ),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Informations',
                            style: TextStyle(
                              color: AppTheme.color.textColor,
                            ),
                          ),
                        ),
                        Divider(),
                        TextButton(
                          onPressed: () {
                            routeAnimation(
                              context,
                              SettingPage(),
                            );
                          },
                          child: Text(
                            'Paramètres',
                            style: TextStyle(
                              color: AppTheme.color.textColor,
                            ),
                          ),
                        ),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Bilan',
                            style: TextStyle(
                              color: AppTheme.color.textColor,
                            ),
                          ),
                        ),
                        Divider(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Support et Maintenance',
                            style: TextStyle(
                              color: AppTheme.color.textColor,
                            ),
                          ),
                        ),
                        Divider(),
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Mon abonnement actuel',
                                style: TextStyle(
                                  color: AppTheme.color.textColor,
                                ),
                              ),
                            ),
                            Text(
                              'Abonnement Mensuel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppTheme.color.primaryColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CButton(
                      height: 40,
                      title: 'Deconnexion',
                      onPressed: () {},
                      color: AppTheme.color.secondaryColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: HomeBody(),
    );
  }
}
