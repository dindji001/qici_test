import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/inviter/invite-collaborateur-page.dart';
import 'package:qici/view/screens/debiteur/debiteur-list.dart';
import 'package:qici/view/screens/creancier/all-creancier-page.dart';
import 'package:qici/view/screens/gestion-stock/rupture-stock.dart';
import 'package:qici/view/screens/gestion-stock/stock-disponible.dart';
import 'package:qici/view/screens/product/detail-product.dart';
import 'package:qici/view/screens/product/product-seuil-alert-page.dart';
import 'package:qici/view/screens/profil-user/profi-user-page.dart';
import 'package:qici/view/widgets/container-widget.dart';
import 'package:qici/view/widgets/home/items-homes/menu-items-widget.dart';
import 'package:qici/view/widgets/produits/best-seller-produit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: width(context),
              decoration: BoxDecoration(
                color: AppTheme.color.primaryColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bonjour',
                          style: TextStyle(
                            color: AppTheme.color.whithColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Dindji Severin',
                          style: TextStyle(
                              color: AppTheme.color.whithColor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            routeAnimation(
                              context,
                              ProfilUserPage(),
                            );
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    AppTheme.asset.utilisateur,
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // MenuItemWidget(
                  //   urlImageMenuItem: AppTheme.asset.ventes,
                  //   nameMenuItem: 'Ventes',
                  //   urlRootMenuItem: ,
                  // ),
                  // MenuItemWidget(
                  //   urlImageMenuItem: AppTheme.asset.facture,
                  //   nameMenuItem: 'Recu/Facture',
                  //   urlRootMenuItem: ,
                  // ),
                  // MenuItemWidget(
                  //   urlImageMenuItem: AppTheme.asset.achat,
                  //   nameMenuItem: 'Achats',
                  //   urlRootMenuItem: ,
                  // ),
                  MenuItemWidget(
                    urlImageMenuItem: AppTheme.asset.dette,
                    nameMenuItem: 'Créancier',
                    urlRootMenuItem: AllCreancier(),
                  ),
                  MenuItemWidget(
                    urlImageMenuItem: AppTheme.asset.creancier,
                    nameMenuItem: 'Débiteur',
                    urlRootMenuItem: DebiteurListPage(),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "État de l'Inventaire",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    ContenaireWidget(
                      nomImageContenaire: 'Stock Disponible',
                      urlImageContenaire: AppTheme.asset.stock,
                      urlNextPageContenaire: StockDisponible(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ContenaireWidget(
                      nomImageContenaire: 'Rupture de stock',
                      urlImageContenaire: AppTheme.asset.ruptureStock,
                      urlNextPageContenaire: RuptureStock(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ContenaireWidget(
                      nomImageContenaire: 'Seuil alerte',
                      urlImageContenaire: AppTheme.asset.alarme,
                      urlNextPageContenaire: ProductSeuilAlertPage(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ContenaireWidget(
                      nomImageContenaire: 'Inviter un utilisateur',
                      urlImageContenaire: AppTheme.asset.inviter,
                      urlNextPageContenaire: InviteCollaborateurPage(),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Produit plus vendu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Voir plus',
                        style: TextStyle(color: AppTheme.color.secondaryColor),
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          routeAnimation(
                              context,
                              DetailProduct(
                                urlImageDetailProduct: AppTheme.asset.ventes,
                              ));
                        },
                        child: BestSellerProduit(
                          etatBestSellerProduct: true,
                          urlImageBestSellerProduct: AppTheme.asset.ventes,
                          pieceSaleBestSellerProduct: 1000,
                          nameBestSellerProduct: 'Ancre impression',
                          priceBestSellerProduct: 2000,
                        ),
                      ),
                      BestSellerProduit(
                        etatBestSellerProduct: false,
                        urlImageBestSellerProduct: AppTheme.asset.ventes,
                        pieceSaleBestSellerProduct: 1000,
                        nameBestSellerProduct: 'Ancre impression',
                        priceBestSellerProduct: 2000,
                      ),
                      BestSellerProduit(
                        etatBestSellerProduct: true,
                        urlImageBestSellerProduct: AppTheme.asset.ventes,
                        pieceSaleBestSellerProduct: 1000,
                        nameBestSellerProduct: 'Ancre impression',
                        priceBestSellerProduct: 2000,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
