import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/cart/pays.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';
import 'package:practica_integradora_uno/models/product_item_cart.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class ItemCupDetails extends StatefulWidget {
  
  final ProductCup cup;
  
  ItemCupDetails({Key key, @required this.cup}) : super(key: key);

  @override
  _ItemCupDetailsState createState() => _ItemCupDetailsState();
}



class _ItemCupDetailsState extends State<ItemCupDetails> {
  
  
void addCart(){
  if(exists.contains(widget.cup.productTitle) == false){
    //Crea el nuevo item
    ProductItemCart prodnew = new ProductItemCart(productTitle: widget.cup.productTitle, 
    productAmount: widget.cup.productAmount, productPrice: widget.cup.productPrice, productImage: widget.cup.productImage, liked: widget.cup.liked);
    //Agrega a la lista
    carrito.add(prodnew);
    //Agrega a una lista temp el titulo para corroborar en el if si ya esta o no
    exists.add(widget.cup.productTitle);
  }
}

  Color isPressed() {
    if (widget.cup.liked == true) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }


  @override
  
  Widget build(BuildContext context) {
    var _precio = widget.cup.productPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.cup.productTitle}"),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: BACKGROUND_COLOR_IMAGE,
            margin: EdgeInsets.all(12),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(38, 0, 0, 0),
                  child: Image.network(
                    "${widget.cup.productImage}",
                    width: 250,
                    height: 280,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 0, 220),
                    child: Icon(
                      Icons.favorite,
                      color: isPressed(),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 290, 10),
            child: Text(
              "${widget.cup.productTitle}",
              style: Theme.of(context).textTheme.title.copyWith(
                  fontWeight: FontWeight.bold,
                  color: BUTTON_COLOR,
                  fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 200, 0),
            child: Text(
              "${widget.cup.productDescription}",
              style: Theme.of(context).textTheme.title.copyWith(
                  fontWeight: FontWeight.bold,
                  color: TEXT,
                  fontSize: 15,
                  fontFamily: "OpenSans"),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                child: Text(
                  "COLORES DISPONIBLES",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(124, 10, 0, 0),
                child: Text(
                  "PRECIO",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 60, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Botones remplazados debido a que flat button no tiene propiedad de tamaño
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.purple)
                      ),
                  color: Colors.blue,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    setState(() {
                      widget.cup.productColor = ProductColor.AZUL;
                     widget.cup.productPrice = widget.cup.productPriceCalculator();
                    });
                  },
                ),
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.purple)
                      ),
                  color: Colors.red,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                     setState(() {
                      widget.cup.productColor = ProductColor.ROJO;
                     widget.cup.productPrice = widget.cup.productPriceCalculator();
                    });
                  },
                ),
                MaterialButton(
                  minWidth: 30,
                  height: 30,
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.purple)
                      ),
                  color: Colors.green,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                     setState(() {
                      widget.cup.productColor = ProductColor.VERDE;
                     widget.cup.productPrice = widget.cup.productPriceCalculator();
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Text("💲"
                    "$_precio",
                    style: TextStyle(
                      fontSize: 28
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              MaterialButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15),
                  ),
                    color: BUTTON_COLOR,
                    child: Text(
                      "AGREGAR AL CARRITO",
                      style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      //navigatePageTwo(context);
                      addCart();
                    },
                  ),
                  MaterialButton(
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15),
                  ),
                    color: BUTTON_COLOR,
                    child: Text(
                      "COMPRAR AHORA",
                      style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Pays()),
                      );
                      //navigatePageTwo(context);
                    },
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
