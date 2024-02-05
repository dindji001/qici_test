import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:qici/utils/appTheme.dart';
import 'package:qici/view/screens/first-page.dart';
import 'package:qici/view/screens/splashcreen_page.dart';
import 'package:qici/view/widgets/splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppTheme.color.primaryColor,
          primarySwatch: Colors.blue,
          colorScheme:
              ColorScheme.fromSeed(seedColor: AppTheme.color.primaryColor),
          useMaterial3: true,
          fontFamily: "Poppins"),
      home: SplashWidget(
        child: SplashScreen(),
        nextPage: FirstPage(),
      ),
    );
  }
}
