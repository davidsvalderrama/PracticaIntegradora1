import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/cart/item_cart.dart';
import 'package:practica_integradora_uno/cart/pays.dart';
import 'package:practica_integradora_uno/models/product_item_cart.dart';

class Cart extends StatefulWidget {
  final List<ProductItemCart> productsList;
  Cart({
    Key key,
    @required this.productsList,
  }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  double _total = 0;
  @override
  void initState() {
    super.initState();
    for (var item in widget.productsList) {
      _total += (item.productPrice * item.productAmount);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView.builder(
              itemCount: widget.productsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemCart(
                  onAmountUpdated: _priceUpdate,
                  product: widget.productsList[index],
                );
              },
            ),
          ),
      
           Text("Total:"  "\$$_total",
            style: TextStyle(
              fontSize: 22,
            ),
            ),

      Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: MaterialButton(
                    height: 30.0,
                    minWidth: 130,
                    color: Colors.grey,
                    child: Text(
                      "PAGAR",
                      style: TextStyle(color: Theme.of(context).textSelectionColor,
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
            ), 
          
        ],
      ),
    );
  }

  void _priceUpdate(double newItemPrice) {
    setState(() {
      _total += newItemPrice;
    });
  }
}