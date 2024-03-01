import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';

class DetailProduct extends StatelessWidget {
  final String urlImageDetailProduct;
  // final String quantiteDisponibleDetailProduct;
  // final int prixUnutaireDetailProduct;
  // final int nombreDeVenteDetailProduct;
  // final String descriptionDetailProduct;
  // final List categorieDetailProduct;
  // final int seuilAlertDetailProduct;
  const DetailProduct({super.key, required this.urlImageDetailProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: AppTheme.color.whithColor),
        backgroundColor: AppTheme.color.primaryColor,
        title: Text(
          'detail produits',
          style: TextStyle(
            color: AppTheme.color.whithColor,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height(context) * 0.35,
                width: height(context) * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppTheme.asset.ventes),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.color.textColor,
                          ),
                          children: [
                            TextSpan(text: 'Qunatité disponible:'),
                            TextSpan(
                              text: '202',
                              style: TextStyle(
                                color: AppTheme.color.secondaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            color: AppTheme.color.secondaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                            right: 10,
                            left: 10,
                          ),
                          child: Text(
                            '160000 FCFA / CARTON',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppTheme.color.whithColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ancre impression',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                            color: AppTheme.color.textColor,
                          ),
                          children: [
                            TextSpan(text: 'Nombre de vente:'),
                            TextSpan(
                              text: '2 000',
                              style: TextStyle(
                                color: AppTheme.color.secondaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description du produit',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffA8A8A9),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Icon(Icons.tag), Text('Categorie 1')],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: width(context),
                decoration: BoxDecoration(
                    color: Color(0xffFFCCD5),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Seuil Alert'),
                      Text(
                        '1 produit restant',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
