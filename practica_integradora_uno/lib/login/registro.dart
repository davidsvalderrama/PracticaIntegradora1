import 'package:flutter/material.dart';


class Registro extends StatefulWidget {
  Registro({Key key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
bool acept = false;
final _userController = TextEditingController();
final _contraController = TextEditingController();
final _correoController = TextEditingController();

void validateUser(){
  
}

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
                  padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                  child: Image.asset('assets/cupping.png',
                  height: 70,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 50, 0, 0),
                child: Text("Nombre Completo:",
                style: TextStyle(color: Colors.white,
                fontSize: 11),),
              ),
            ],
          ),
            Container(
              width: 385,
              height: 45,
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
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text("Email:",
                style: TextStyle(color: Colors.white,
                fontSize: 11),),
              ),
            ],
          ),
            Container(
              width: 385,
              height: 45,
              child: TextField(
                controller: _correoController,
                decoration: InputDecoration(
                  hintText: 'is708346@iteso.mx',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  child: Text(
                    "Password:",
                    style: TextStyle(color: Colors.white,
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
                  suffixIcon: Icon(Icons.remove_red_eye),
                  fillColor: Colors.white,
                  filled: false,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
              Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Checkbox(
                    value: acept, 
                    activeColor: Colors.grey,
                    onChanged: (bool x){
                      setState(() {
                        acept = x;
                      });
                    },
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text("ACEPTO LOS TÉRMINOS Y CONDICIONES DE USO",
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                    ),
                  ),  
              ],
            ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      height: 50,
                      minWidth: 385,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8)),
                      color: Theme.of(context).buttonColor,
                      child: Text(
                        "REGISTRATE",
                        style: TextStyle(
                          color: Theme.of(context).textSelectionColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: "OpenSans",
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: Text(
                          "¿Ya tienes una cuenta?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text(
                          "INGRESA",
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