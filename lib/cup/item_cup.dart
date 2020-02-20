import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/cup/item_cup_details.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';

class ItemCup extends StatefulWidget {
  final ProductCup cup;
  ItemCup({
    Key key,
    @required this.cup,
  }) : super(key: key);

  @override
  _ItemCupState createState() => _ItemCupState();
}

class _ItemCupState extends State<ItemCup> {

void _openItemCup() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ItemCupDetails(
            //Carga de productos "Cafe"
            cup: widget.cup,
          );
        },
      ),
    );
  }

 Color _pressLiked() {
    if (!widget.cup.liked) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  } 

  @override
  Widget build(BuildContext context) {
    //return Container(child: Text("${widget.drink.productTitle}"));
    return GestureDetector(
        onTap: _openItemCup,
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
                  "${widget.cup.productTitle}",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text("💲"
                  "${widget.cup.productPrice}",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold,
                      fontSize: 20),
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
                  "${widget.cup.productImage}",
                  fit: BoxFit.fitHeight,
                  height: 180,
                ),
              ),
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 145),
              child: IconButton(icon: Icon(Icons.favorite, color: _pressLiked(),), onPressed: (){
                setState(() {
                 Color temp = _pressLiked();

                      if(temp == Colors.white){
                        widget.cup.liked = true;
                      }else{
                        widget.cup.liked = false;
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
