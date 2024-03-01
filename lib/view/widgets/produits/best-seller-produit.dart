import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class BestSellerProduit extends StatefulWidget {
  final String urlImageBestSellerProduct;
  final int pieceSaleBestSellerProduct;
  final String nameBestSellerProduct;
  final int priceBestSellerProduct;
  bool etatBestSellerProduct;

  BestSellerProduit(
      {super.key,
      required this.urlImageBestSellerProduct,
      required this.pieceSaleBestSellerProduct,
      required this.nameBestSellerProduct,
      required this.priceBestSellerProduct,
      required this.etatBestSellerProduct});

  @override
  State<BestSellerProduit> createState() => _BestSellerProduitState();
}

class _BestSellerProduitState extends State<BestSellerProduit> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 260,
        decoration: BoxDecoration(
          color: AppTheme.color.whithColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(157, 211, 209, 209),
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.urlImageBestSellerProduct),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.nameBestSellerProduct,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${widget.pieceSaleBestSellerProduct} pieces vendu',
                style: TextStyle(
                  color: AppTheme.color.secondaryColor,
                ),
              ),
              Text('${widget.priceBestSellerProduct} FCFA'),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.etatBestSellerProduct == true
                        ? 'disponible'
                        : 'indisponible',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: widget.etatBestSellerProduct == true
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
