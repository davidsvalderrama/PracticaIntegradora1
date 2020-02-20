import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/drinks/item_drinks_details.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';

class ItemDrinks extends StatefulWidget {
  final ProductDrinks drink;
  ItemDrinks({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _ItemDrinksState createState() => _ItemDrinksState();
}

class _ItemDrinksState extends State<ItemDrinks> {
  
  void _openItemDrink() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ItemDrinkDetails(
            //Carga de productos "Bebidas"
            drink: widget.drink,
          );
        },
      ),
    );
  }

  Color _pressLiked() {
    if (!widget.drink.liked) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

 


  @override
  Widget build(BuildContext context) {
    
    //return Container(child: Text("${widget.drink.productTitle}"));
    return GestureDetector(
      onTap: _openItemDrink,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(8.0),
        color: Theme.of(context).cardColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "${widget.drink.productTitle}",
                    style: Theme.of(context).textTheme.title.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "💲"
                    "${widget.drink.productPrice}",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              flex: 2,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
                child: Image.network(
                  "${widget.drink.productImage}",
                  fit: BoxFit.fitHeight,
                  height: 180,
                ),
              ),
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 145),
              child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: _pressLiked(),
                  ),
                  onPressed: () {
                    setState(() {
                      Color temp = _pressLiked();

                      if(temp == Colors.white){
                        widget.drink.liked = true;
                      }else{
                        widget.drink.liked = false;
                      }
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
