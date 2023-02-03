import 'package:flutter/material.dart';
import 'package:olamundo/app_controler.dart';
import 'package:olamundo/desafiodelayout.dart';
import 'package:olamundo/loginPage.dart';

import 'homepage.dart';

class AppWidget extends StatelessWidget {
  final String titulo;

  const AppWidget({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppControler.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: "/",
          routes: {
            "/": (context) => LoginPage(),
            "/home": (context) => HomePage(),
            "/desafio": (context) => MenuPrincipal()
          },
        );
      },
      animation: AppControler.instance,
    );
  }
}
