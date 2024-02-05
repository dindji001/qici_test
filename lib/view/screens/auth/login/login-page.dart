import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/auth/register/register.dart';
import 'package:qici/view/widgets/button.dart';
import 'package:qici/viewmodel/auth/login/loginViewModel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginVewModel loginViewModel = Get.put(LoginVewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height(context),
          child: Form(
            key: loginViewModel.formKeyLogin,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: height(context) * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.color
                                  .textColor), // Style du texte par défaut
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Hello! ',
                              style: TextStyle(color: AppTheme.color.textColor),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Cela fait un moment que vous n'étiez pas là, bienvenue de retour.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppTheme.color.textColor,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          TextFormField(
                            controller: loginViewModel.emailController,
                            decoration: InputDecoration(
                              focusedBorder: loginViewModel.emailFocusedBorder,
                              errorBorder: loginViewModel.emailErrorBorder,
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0XffD9D9D9),
                              ),
                              filled: true,
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Color(0XffD9D9D9),
                                fontSize: 14,
                              ),
                              fillColor: AppTheme.color.backgroundTextField,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15,
                              ),
                            ),
                            onChanged: (value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Veuillez entrer votre email';
                              } else if (!loginViewModel.isEmailValid(value)) {
                                return 'Adresse e-mail invalide';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextFormField(
                                controller: loginViewModel.passwordController,
                                decoration: InputDecoration(
                                  focusedBorder:
                                      loginViewModel.passwordFocusedBorder,
                                  errorBorder:
                                      loginViewModel.passwordErrorBorder,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0XffD9D9D9),
                                  ),
                                  filled: true,
                                  hintText: "Mot de passe",
                                  hintStyle: TextStyle(
                                    color: Color(0XffD9D9D9),
                                    fontSize: 14,
                                  ),
                                  fillColor: AppTheme.color.backgroundTextField,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Obx(() => Icon(
                                          loginViewModel.obscurePassword.value
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.grey,
                                        )),
                                    onPressed: () {
                                      loginViewModel.togglePasswordVisibility();
                                    },
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                ),
                                onChanged: (value) {},
                                obscureText:
                                    loginViewModel.obscurePassword.value,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Veuillez entrer votre mot de passe';
                                  } else if (!loginViewModel
                                      .isPasswordValid(value)) {
                                    return 'Mot de passe invalide';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Mot de passe oublier?",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: AppTheme.color.primaryColor,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CButton(
                        title: "Connexion",
                        onPressed: () {
                          loginViewModel.submitForm();
                        },
                        color: AppTheme.color.primaryColor,
                      )
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppTheme
                            .color.textColor), // Style du texte par défaut
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Vous avez pas de compte? ',
                        style: TextStyle(color: AppTheme.color.textColor),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Rediriger l'utilisateur vers la page LoginPage
                            route(
                              context,
                              RegisterUserPage(),
                            ); // Assurez-vous d'avoir la gestion de la navigation avec GetX
                          },
                        text: 'Inscrivez-vous',
                        style: TextStyle(color: AppTheme.color.primaryColor),
                      ),
                    ],
                  ),
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
      ),
    );
  }
}
