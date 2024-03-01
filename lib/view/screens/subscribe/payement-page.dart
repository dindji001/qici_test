import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/congraculation-page.dart';
import 'package:qici/view/widgets/button.dart';

class PayementPage extends StatelessWidget {
  final snackBar = SnackBar(
    content: const Text('Veillez choisir un opérateur de transaction'),
    action: SnackBarAction(
      label: 'Annuler',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );
  @override
  String? payementMethode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CButton(
        width: width(context) * 0.95,
        title: "Passer au payement",
        color: AppTheme.color.primaryColor,
        onPressed: () {
          route(context, CongraculationPage());
        },
        titleColor: AppTheme.color.whithColor,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Methode de payement",
          style: TextStyle(
              fontSize: 20,
              color: AppTheme.color.textColor,
              fontFamily: "roboto"),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppTheme.color.textColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15),
        child: Container(
          height: height(context) * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selectionnez votre Methode de payement",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ajoutez un nouveau service",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RadioListTile(
                        title: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(AppTheme.asset.orangeMoney),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("ORANGE MONEY"),
                          ],
                        ),
                        value: "orange money",
                        groupValue: payementMethode,
                        onChanged: (String? value) {},
                      ),
                      Divider(),
                      RadioListTile(
                        title: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(AppTheme.asset.mtnMoney),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("MTN MONEY"),
                          ],
                        ),
                        value: "mtn",
                        groupValue: payementMethode,
                        onChanged: (String? value) {},
                      ),
                      Divider(),
                      RadioListTile(
                        title: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(AppTheme.asset.moovMoney),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("MOOV MONEY"),
                          ],
                        ),
                        value: "moov",
                        groupValue: payementMethode,
                        onChanged: (String? value) {},
                      ),
                      Divider(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
