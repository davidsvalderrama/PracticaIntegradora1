import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/cart/pays.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';
import 'package:practica_integradora_uno/models/product_item_cart.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class ItemGrainsDetails extends StatefulWidget {
  
  final ProductGrains grain;
  
  ItemGrainsDetails({Key key, @required this.grain}) : super(key: key);

  @override
  _ItemGrainsDetailsState createState() => _ItemGrainsDetailsState();
}

class _ItemGrainsDetailsState extends State<ItemGrainsDetails> {
  
   void addCart(){
  if(exists.contains(widget.grain.productTitle) == false){
    //Crea el nuevo item
    ProductItemCart prodnew = new ProductItemCart(productTitle: widget.grain.productTitle, 
    productAmount: widget.grain.productAmount, productPrice: widget.grain.productPrice, productImage: widget.grain.productImage, liked: widget.grain.liked);
    //Agrega a la lista
    carrito.add(prodnew);
    //Agrega a una lista temp el titulo para corroborar en el if si ya esta o no
    exists.add(widget.grain.productTitle);
  }
}

  Color isPressed() {
    if (widget.grain.liked == true) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }


  @override
  
  Widget build(BuildContext context) {
    var _precio = widget.grain.productPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.grain.productTitle}"),
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
                    "${widget.grain.productImage}",
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
            padding: const EdgeInsets.fromLTRB(10, 0, 270, 10),
            child: Text(
              "${widget.grain.productTitle}",
              style: Theme.of(context).textTheme.title.copyWith(
                  fontWeight: FontWeight.bold,
                  color: BUTTON_COLOR,
                  fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 130, 0),
            child: Text(
              "${widget.grain.productDescription}",
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
            padding: const EdgeInsets.fromLTRB(0, 30, 160, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      widget.grain.productWeight = ProductWeight.CUARTO;
                     widget.grain.productPrice = widget.grain.productPriceCalculator();
                    });
                  },
                  child: Text(
                    "250 G",
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
                      widget.grain.productWeight = ProductWeight.KILO;
                     widget.grain.productPrice = widget.grain.productPriceCalculator();
                    });
                  },
                  child: Text(
                    "1K",
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
                      //navigatePageTwo(context);
                      Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Pays()),
                      );
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
