import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/cart/pays.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';
import 'package:practica_integradora_uno/models/product_item_cart.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class ItemDrinkDetails extends StatefulWidget {
  
  final ProductDrinks drink;
  
  ItemDrinkDetails({Key key, @required this.drink}) : super(key: key);

  @override
  _ItemDrinkDetailsState createState() => _ItemDrinkDetailsState();
}

class _ItemDrinkDetailsState extends State<ItemDrinkDetails> {
  
  void addCart(){
  if(exists.contains(widget.drink.productTitle) == false){
    //Crea el nuevo item
    ProductItemCart prodnew = new ProductItemCart(productTitle: widget.drink.productTitle, 
    productAmount: widget.drink.productAmount, productPrice: widget.drink.productPrice, productImage: widget.drink.productImage, liked: widget.drink.liked);
    //Agrega a la lista
    carrito.add(prodnew);
    //Agrega a una lista temp el titulo para corroborar en el if si ya esta o no
    exists.add(widget.drink.productTitle);
  }
}

  Color isPressed() {
    if (widget.drink.liked == true) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }


  @override
  
  Widget build(BuildContext context) {
    var _precio = widget.drink.productPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.drink.productTitle}"),
      ),
      body: Column(
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
                    "${widget.drink.productImage}",
                    width: 300,
                    height: 280,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 220),
                    child: Icon(
                      Icons.favorite,
                      color: isPressed(),
                    )),
              ],
            ),
          ),
          Padding(
           padding: const EdgeInsets.fromLTRB(10, 0, 240, 10),
            child: Text(
              "${widget.drink.productTitle}",
              style: Theme.of(context).textTheme.title.copyWith(
                  fontWeight: FontWeight.bold,
                  color: BUTTON_COLOR,
                  fontSize: 23),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
           padding: const EdgeInsets.fromLTRB(10, 0, 100, 0),
            child: Text(
              "${widget.drink.productDescription}",
              style: Theme.of(context).textTheme.title.copyWith(
                  fontWeight: FontWeight.bold,
                  color: TEXT,
                  fontSize: 18,
                  fontFamily: "OpenSans"),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                child: Text(
                  "TAMAÑOS DISPONIBLES",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 8, 0, 0),
                child: Text(
                  "💲"
                  "$_precio",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 80, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple)
                      ),
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    setState(() {
                      widget.drink.productSize = ProductSize.CH;
                     widget.drink.productPrice = widget.drink.productPriceCalculator();
                    });
                  },
                  child: Text(
                    "Chico",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple)
                      ),
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                     setState(() {
                      widget.drink.productSize = ProductSize.M;
                     widget.drink.productPrice = widget.drink.productPriceCalculator();
                    });
                  },
                  child: Text(
                    "Mediano",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                
                FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.purple)
                      ),
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                     setState(() {
                      widget.drink.productSize = ProductSize.G;
                     widget.drink.productPrice = widget.drink.productPriceCalculator();
                    });
                  },
                  child: Text(
                    "Grande",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
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
