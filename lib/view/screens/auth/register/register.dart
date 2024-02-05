import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/utils/navigation_service.dart';
import 'package:qici/view/screens/auth/login/login-page.dart';
import 'package:qici/view/screens/auth/register/ftp-page.dart';
import 'package:qici/view/widgets/button.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({super.key});

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  String selectedOption = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 900,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppTheme.color.primaryColor,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 45,
                        color: AppTheme.color.whithColor,
                      ),
                    ),
                    Text(
                      "Hello User!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.color.textColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "créez votre compte pour une meilleure expérience",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(225, 43, 37, 37),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    TextFormField(
                      // controller: loginViewModel.emailController,
                      decoration: InputDecoration(
                        // focusedBorder: loginViewModel.emailFocusedBorder,
                        // errorBorder: loginViewModel.emailErrorBorder,
                        prefixIcon: Icon(
                          Icons.business_center,
                          color: Color(0XffD9D9D9),
                        ),
                        filled: true,
                        hintText: "Nom de l'entreprise",
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
                        ), // Ajustez ces valeurs selon vos besoins
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Veuillez entrer votre email';
                        // } else if (!loginViewModel.isEmailValid(value)) {
                        //   return 'Adresse e-mail invalide';
                        // }
                        // return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // controller: loginViewModel.emailController,
                      decoration: InputDecoration(
                        // focusedBorder: loginViewModel.emailFocusedBorder,
                        // errorBorder: loginViewModel.emailErrorBorder,
                        prefixIcon: Icon(
                          Icons.local_activity_sharp,
                          color: Color(0XffD9D9D9),
                        ),
                        filled: true,
                        hintText: "Secteur d'activité",
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
                        ), // Ajustez ces valeurs selon vos besoins
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Veuillez entrer votre email';
                        // } else if (!loginViewModel.isEmailValid(value)) {
                        //   return 'Adresse e-mail invalide';
                        // }
                        // return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IntlPhoneField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppTheme.color.backgroundTextField,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Numéro de téléphone',
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      ),
                      initialCountryCode:
                          'FR', // Code pays initial (France dans cet exemple)
                      onChanged: (phone) {
                        // Gérez les changements du numéro de téléphone ici
                      },
                      validator: (value) {
                        if (value != null) {
                          return 'Veuillez entrer votre numéro de téléphone';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // controller: loginViewModel.emailController,
                      decoration: InputDecoration(
                        // focusedBorder: loginViewModel.emailFocusedBorder,
                        // errorBorder: loginViewModel.emailErrorBorder,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0XffD9D9D9),
                        ),
                        filled: true,
                        hintText: "Adresse Email",
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
                        ), // Ajustez ces valeurs selon vos besoins
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Veuillez entrer votre email';
                        // } else if (!loginViewModel.isEmailValid(value)) {
                        //   return 'Adresse e-mail invalide';
                        // }
                        // return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Type d'utilisateur :",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.color.textColor,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RadioListTile(
                              title: Text('Entreprise'),
                              value: 'Entreprise',
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              title: Text('Particulier'),
                              value: 'Particulier',
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value.toString();
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextFormField(
                      // controller: loginViewModel.emailController,
                      decoration: InputDecoration(
                        // focusedBorder: loginViewModel.emailFocusedBorder,
                        // errorBorder: loginViewModel.emailErrorBorder,
                        prefixIcon: Icon(
                          Icons.key,
                          color: Color(0XffD9D9D9),
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        filled: true,
                        hintText: "Entrer votre mot de passe",
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
                        ), // Ajustez ces valeurs selon vos besoins
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        // if (value == null || value.isEmpty) {
                        //   return 'Veuillez entrer votre email';
                        // } else if (!loginViewModel.isEmailValid(value)) {
                        //   return 'Adresse e-mail invalide';
                        // }
                        // return null;
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    CButton(
                      title: "S'inscrire",
                      onPressed: () {
                        route(context, const VerifyPhoneOtp());
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppTheme
                                .color.textColor), // Style du texte par défaut
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Vous avez déja un compte? ',
                            style: TextStyle(color: AppTheme.color.textColor),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Rediriger l'utilisateur vers la page LoginPage
                                route(
                                  context,
                                  LoginPage(),
                                ); // Assurez-vous d'avoir la gestion de la navigation avec GetX
                              },
                            text: 'Connectez-vous',
                            style:
                                TextStyle(color: AppTheme.color.primaryColor),
                          ),
                        ],
                      ),
                    ),
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
