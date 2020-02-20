

import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/login/login.dart';
import 'package:practica_integradora_uno/login/registro.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 125, 0, 0),
                  child: Image.asset('assets/cupping.png',
                  height: 130,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                child: MaterialButton(
                  height: 55.0,
                  minWidth: 375,
                  color: Theme.of(context).buttonColor,
                  child: Text(
                    "REGISTRARSE",
                    style: TextStyle(color: Theme.of(context).textSelectionColor,
                    fontSize: 16,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: () {
                    //navigatePageTwo(context);
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Registro()),
                      );
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
                child: MaterialButton(
                  height: 55.0,
                  minWidth: 375,
                  color: BUTTON_COLOR,
                  child: Text(
                    "INGRESA",
                    style: TextStyle(color: Theme.of(context).textSelectionColor,
                    fontSize: 16,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    //navigatePageTwo(context);
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Login()),
                      );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}