import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/grains/item_grains_details.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';

class ItemGrains extends StatefulWidget {
  final ProductGrains grains;
  ItemGrains({
    Key key,
    @required this.grains,
  }) : super(key: key);

  @override
  _ItemGrainsState createState() => _ItemGrainsState();
}

class _ItemGrainsState extends State<ItemGrains> {

   void _openItemGrain() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ItemGrainsDetails(
            //Carga de productos "Cafe"
            grain: widget.grains,
          );
        },
      ),
    );
  }

    Color _pressLiked() {
    if (!widget.grains.liked) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  } 

  @override
  Widget build(BuildContext context) {
    //return Container(child: Text("${widget.drink.productTitle}"));
    return GestureDetector(
      onTap: _openItemGrain,
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
                  "${widget.grains.productTitle}",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text("💲"
                  "${widget.grains.productPrice}",
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
                  "${widget.grains.productImage}",
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
                        widget.grains.liked = true;
                      }else{
                        widget.grains.liked = false;
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
