import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

class ItemCart extends StatefulWidget {
  final dynamic product;
  final ValueChanged<double> onAmountUpdated;
  ItemCart({
    Key key,
    @required this.onAmountUpdated,
    @required this.product,
  }) : super(key: key);

  @override
  _ItemCartState createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(30),
      color: Naranja,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: Text("${widget.product.productTitle}",
                style: TextStyle(
                  fontSize: 18
                ),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(110, 0, 0, 0),
                child: Icon(Icons.favorite,
                color: _isPressed(),
                ),

              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.network(
                "${widget.product.productImage}",
                width: 200,
                height: 200,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.remove_circle), onPressed: _remProd),
                Text(
                  "${widget.product.productAmount}",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.add_circle_outline), onPressed: _addProd),
                SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "💲"
                      "${widget.product.productPrice}",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: IconButton(
                       icon: Icon(Icons.restore_from_trash),
                       onPressed: (){
                         _removefromCart();
                       },
                       ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }

  void _addProd() {
    setState(() {
      ++widget.product.productAmount;
    });
    widget.onAmountUpdated(widget.product.productPrice);
  }

  void _remProd() {
    if (widget.product.productAmount > 0) {
      setState(() {
        --widget.product.productAmount;
      });
      widget.onAmountUpdated(-1 * widget.product.productPrice);
    }
  }

  void _removefromCart(){
  carrito.remove(widget.product);
  exists.remove(widget.product.productTitle);
  setState(() {
    widget.onAmountUpdated (-1* widget.product.productAmount * widget.product.productPrice);
  });
}

Color _isPressed() {
    if (widget.product.liked == true) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }

}


