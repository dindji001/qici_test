import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/widgets/button.dart';

class MoreDetailDebiteurPage extends StatelessWidget {
  const MoreDetailDebiteurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CButton(
        title: 'Appel le débiteur',
        onPressed: () {},
        width: width(context) - 30,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail du débiteur',
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
                            height: 60,
                            width: 60,
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
                            children: [
                              Text(
                                'Dindji N’dja Sévérin .W',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
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
                      Row(
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
          Column(
            children: [
              Text(
                'Details payment ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
