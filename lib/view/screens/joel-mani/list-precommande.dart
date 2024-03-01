import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';

class Listeprecommande extends StatelessWidget {
  const Listeprecommande({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Liste des precommandes',
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
          Padding(
            padding:
                const EdgeInsets.only(right: 8, left: 8, top: 10, bottom: 10),
            child: Container(
              height: 100,
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
                padding: const EdgeInsets.only(
                    right: 8, left: 8, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppTheme.asset.stock),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sac de riz 50 kg'),
                            Text(
                              '10',
                              style: TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Date de livraison')
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Effectuer',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '35 000 FCFA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.color.primaryColor,
                          ),
                        ),
                        Text(
                          '10-05-2024',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
