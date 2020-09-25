import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String itemCardImage;

  const CardImage({
    Key key,
    @required this.itemCardImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: CachedNetworkImage(
          imageUrl: itemCardImage,
          placeholder: (context, url) =>
              Image.asset('assets/images/Character_Default_Icon.png'),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          height: 106,
          width: 106,
        ),
      ),
    );
  }
}