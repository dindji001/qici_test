import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/presentation-app-section/caroussel-page-presentation.dart';

import 'package:qici/view/widgets/button.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height(context),
            width: width(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppTheme.asset.backgroundImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: height(context),
            width: width(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: [
                  0.1,
                  1,
                ],
                colors: [
                  Color.fromARGB(82, 0, 0, 0),
                  AppTheme.color.primaryColor
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: 48,
                              color: AppTheme.color.whithColor,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: 'Bienvenu sur '),
                            TextSpan(
                              text: ' QICI',
                              style: TextStyle(
                                color: AppTheme.color.secondaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: AppTheme.color.whithColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'Découvrez une nouvelle façon de gérer votre entreprise avec ',
                            ),
                            TextSpan(
                              text: 'QICI',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CButton(
                        title: 'Commencer',
                        sizeTitle: 14,
                        color: AppTheme.color.secondaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 200),
                              transitionsBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation,
                                  Widget child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                              pageBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation) {
                                return CarrouselPage();
                              },
                            ),
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
