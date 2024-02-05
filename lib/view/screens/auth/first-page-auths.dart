import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/auth/login/login-page.dart';
import 'package:qici/view/screens/auth/register/register.dart';
import 'package:qici/view/widgets/button.dart';

class FirstPageAuth extends StatelessWidget {
  const FirstPageAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: width(context) * 0.3,
                width: width(context) * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppTheme.asset.logo2),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.color.textColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "Bienvenu sur "),
                    TextSpan(
                      text: "QICI",
                      style: TextStyle(
                        color: AppTheme.color.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  CButton(
                    title: "Connexion",
                    onPressed: () {
                      routeAnimation(context, LoginPage());
                    },
                  ),
                  SizedBox(height: 10),
                  CButton(
                    title: "Inscription",
                    color: AppTheme.color.backgroundTextField,
                    titleColor: AppTheme.color.primaryColor,
                    onPressed: () {
                      routeAnimation(context, RegisterUserPage());
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 2,
                        width: (width(context) / 2) - 30,
                        decoration: BoxDecoration(
                          color: AppTheme.color.backgroundTextField,
                        ),
                      ),
                      Text(
                        "Ou",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: AppTheme.color.backgroundTextField,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: (width(context) / 2) - 30,
                        decoration: BoxDecoration(
                          color: AppTheme.color.backgroundTextField,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: AppTheme.color.primaryColor,
                            width: 2,
                          ),
                          color: AppTheme.color.backgroundTextField2,
                        ),
                        child: Center(
                          child: Image.asset(
                            AppTheme.asset.google,
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: AppTheme.color.primaryColor,
                            width: 2,
                          ),
                          color: AppTheme.color.backgroundTextField2,
                        ),
                        child: Center(
                          child: Image.asset(
                            AppTheme.asset.apple,
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: AppTheme.color.primaryColor,
                            width: 2,
                          ),
                          color: AppTheme.color.backgroundTextField2,
                        ),
                        child: Center(
                          child: Image.asset(
                            AppTheme.asset.facebook,
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
