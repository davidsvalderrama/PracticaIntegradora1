import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/home/home.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}


validate(String constante_User, String control_User, String constante_pass,
    String control_pass, BuildContext context) {
  if (constante_User == constante_User && constante_pass == control_pass) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => Home(
                title: APP_TITLE,
              )),
    );
  } else {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("ALERTA"),
          content: new Text("Usuario y/o contraseña Incorrecta"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ); 
      },
    );
  }
}

class _LoginState extends State<Login> {
  final _userController = TextEditingController();
  final _contraController = TextEditingController();

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
                  padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
                  child: Image.asset(
                    'assets/cupping.png',
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 70, 0, 0),
                child: Text(
                  "Nombre Completo:",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ],
          ),
          Container(
            width: 385,
            height: 50,
            child: TextField(
              controller: _userController,
              decoration: InputDecoration(
                hintText: 'John Doe',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                child: Text(
                  "Password:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 385,
            height: 50,
            child: TextField(
              controller: _contraController,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: false,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Column(
              children: <Widget>[
                MaterialButton(
                  height: 50,
                  minWidth: 385,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8)),
                  color: Theme.of(context).buttonColor,
                  child: Text(
                    "ENTRAR",
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: "OpenSans",
                    ),
                  ),
                  onPressed: () {
                    validate(PROFILE_NAME, _userController.text, PASSWORD_USER,
                        _contraController.text, context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "¿Olvidaste tu password?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Text(
                    "¿Aún no tienes cuenta?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    "REGISTRATE",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
