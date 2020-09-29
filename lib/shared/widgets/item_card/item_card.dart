import 'package:GenshinImpactCompanionApp/shared/widgets/item_card/card_image.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/item_card/card_name.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemCardImage;

  const ItemCard({Key key, @required this.itemName, this.itemCardImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: itemName,
      child: Container(
        width: 106,
        child: Column(
          children: <Widget>[
            CardImage(itemCardImage: itemCardImage),
            CardName(itemName: itemName),
          ],
        ),
      ),
    );
  }
}
