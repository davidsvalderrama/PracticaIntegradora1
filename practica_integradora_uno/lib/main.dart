import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/home/Home.dart';
import 'package:practica_integradora_uno/login/inicio.dart';
import 'package:practica_integradora_uno/login/Login.dart';
import 'package:practica_integradora_uno/login/Registro.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: APP_TITLE,
      theme: ThemeData(
        primarySwatch: PRIMARY_COLOR,
        backgroundColor: PRIMARY_COLOR,
        buttonColor: BUTTON_COLOR,
        textSelectionColor: TEXT,
        cardColor: TEXT_PRODUCT_DESCRIPTION_COLOR,
      ),
      home: Inicio(),
    );
  }
}
