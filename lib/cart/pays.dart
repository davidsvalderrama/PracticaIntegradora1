import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/profile.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class Pays extends StatefulWidget {
  Pays({Key key}) : super(key: key);

  @override
  _PaysState createState() => _PaysState();
}

class _PaysState extends State<Pays> {

  _dialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            Image.network(
                "https://as.com/deporteyvida/imagenes/2018/11/30/portada/1543604759_559830_1543604909_noticia_normal.jpg"),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Image.network(
                    "https://images.vexels.com/media/users/3/131087/isolated/preview/d8b847791d5b299a63ced22fbacc95e3-icono-de-taza-de-t--caliente-by-vexels.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    "¡Orden exitosa!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 180, 10),
                  child: Text("Taza Cupping"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Text("Tu orden ha sido registrada, para más información busca en la opción de compras en tú perfil"),
                ),
              ],
            ),
            new FlatButton(
              child: new Text("ACEPTAR"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagos"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => Profile()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 70, 0),
            child: Text(
              "Elige tú método de pago:",
              style: TextStyle(fontSize: 23, fontFamily: "Akzidenz"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: GestureDetector(
              onTap: _dialog,
              child: Card(
                elevation: 4.0,
                margin: EdgeInsets.all(10.0),
                color: Theme.of(context).cardColor,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.network(
                        "https://images.vexels.com/media/users/3/129923/isolated/preview/23c69d5178087b811dd1196cf6274613-icono-de-tarjetas-de-credito-by-vexels.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 30),
                        child: Text(
                          "Tarjeta de crédito",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 10, 10),
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: GestureDetector(
            onTap: _dialog,
                          child: Card(
                elevation: 4.0,
                margin: EdgeInsets.all(10.0),
                color: Theme.of(context).cardColor,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.network(
                        "https://image.flaticon.com/icons/png/512/39/39022.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 30),
                        child: Text(
                          "PayPal",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 10, 10),
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
            child: GestureDetector(
              onTap: _dialog,
                          child: Card(
                elevation: 4.0,
                color: Theme.of(context).cardColor,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.network(
                        "https://cdn.onlinewebfonts.com/svg/img_456261.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 20, 20),
                        child: Text(
                          "Tarjeta de regalo",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 10, 10),
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
