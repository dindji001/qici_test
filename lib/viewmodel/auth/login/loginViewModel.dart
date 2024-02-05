import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/view/screens/auth/register/register.dart';
import 'package:qici/view/screens/home/route-menu.dart';

class LoginVewModel extends GetxController {
  final GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  RxBool obscurePassword = true.obs;
  RxBool obscureConfirmPassword = true.obs;

  // Ajout des bordures et couleurs pour les champs email, mot de passe et confirmation de mot de passe
  final OutlineInputBorder emailFocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppTheme.color.primaryColor),
    borderRadius: BorderRadius.circular(15),
  );

  final OutlineInputBorder emailErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15),
  );

  final OutlineInputBorder passwordFocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppTheme.color.primaryColor),
    borderRadius: BorderRadius.circular(15),
  );

  final OutlineInputBorder passwordErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15),
  );

  final OutlineInputBorder confirmPasswordFocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppTheme.color.primaryColor),
    borderRadius: BorderRadius.circular(15),
  );

  final OutlineInputBorder confirmPasswordErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(15),
  );

  @override
  void onInit() {
    super.onInit();
    emailController.addListener(() {});
    passwordController.addListener(() {});
    confirmPasswordController.addListener(() {});
  }

  bool isEmailValid(String? email) {
    final RegExp emailRegExp = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
    );
    return emailRegExp.hasMatch(email ?? '');
  }

  bool isPasswordValid(String? password) {
    final RegExp passwordRegExp = RegExp(
      r'^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*()_+{}|:<>,.?/~]).{6,}$',
    );
    return passwordRegExp.hasMatch(password ?? '');
  }

  void togglePasswordVisibility() {
    obscurePassword.toggle();
  }

  void submitForm() {
    if (formKeyLogin.currentState!.validate()) {
      final email = emailController.text;
      final password = passwordController.text;

      // Afficher un temps de chargement de 2 secondes
      showLoadingDialog();

      // Utiliser Future.delayed pour attendre 2 secondes
      Future.delayed(Duration(seconds: 2), () {
        // Fermer le temps de chargement
        Get.back(); // Assurez-vous que vous avez la gestion de la navigation avec GetX

        // Rediriger vers la page RegisterUserInfo
        Get.offAll(RegisterUserPage());
      });
    }
  }

  void showLoadingDialog() {
    Get.dialog(
      Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppTheme.color.whithColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: CircularProgressIndicator(
                color: AppTheme.color.secondaryColor,
              ),
            ),
          ),
        ), // Vous pouvez personnaliser le widget de chargement
      ),
      barrierDismissible:
          false, // Pour empêcher la fermeture de la boîte de dialogue en cliquant en dehors
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
