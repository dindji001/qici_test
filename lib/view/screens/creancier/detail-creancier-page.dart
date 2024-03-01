import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/widgets/button.dart';

class DetailDette extends StatelessWidget {
  const DetailDette({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CButton(
        title: 'Appel le creancier',
        onPressed: () {},
        width: width(context) - 30,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail du creancier',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: AppTheme.color.whithColor,
        ),
        backgroundColor: AppTheme.color.primaryColor,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                width: width(context),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Date d’echeance:',
                        style: TextStyle(
                          color: AppTheme.color.whithColor,
                        ),
                      ),
                      Text(
                        ' 25/01/2023',
                        style: TextStyle(
                            color: AppTheme.color.whithColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                width: width(context),
                decoration: BoxDecoration(
                  color: AppTheme.color.whithColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(157, 211, 209, 209),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppTheme.asset.utilisateur),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Dindji N’dja Sévérin .W',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Creéancier de carreau',
                                style: TextStyle(
                                  color:
                                      AppTheme.color.backgroundTextFieldBordu,
                                ),
                              ),
                              Text(
                                'Cocody-Mermoze',
                                style: TextStyle(
                                  color: AppTheme.color.primaryColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Details payment ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 150,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informations Products',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      width: width(context),
                      decoration: BoxDecoration(
                        color: AppTheme.color.whithColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(157, 211, 209, 209),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('Carreaux'),
                                    Text(
                                      'Nom du produit',
                                      style: TextStyle(
                                        color: AppTheme
                                            .color.backgroundTextFieldBordu,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('25/12/2023'),
                                    Text(
                                      'Date de livraisont',
                                      style: TextStyle(
                                        color: AppTheme
                                            .color.backgroundTextFieldBordu,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('3.000 FCFA'),
                                    Text(
                                      'Prix unitaire ',
                                      style: TextStyle(
                                        color: AppTheme
                                            .color.backgroundTextFieldBordu,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('20'),
                                    Text(
                                      'Quantité cmde',
                                      style: TextStyle(
                                        color: AppTheme
                                            .color.backgroundTextFieldBordu,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('0 FCFA'),
                                    Text(
                                      'Livraison',
                                      style: TextStyle(
                                        color: AppTheme
                                            .color.backgroundTextFieldBordu,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('75.000 FCFA'),
                                    Text(
                                      'Prix total',
                                      style: TextStyle(
                                        color: AppTheme
                                            .color.backgroundTextFieldBordu,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('15.000 FCFA'),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: AppTheme.color.primaryColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('25.000 FCFA'),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: AppTheme.color.secondaryColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('35.000 FCFA'),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
