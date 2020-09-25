import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CharacterCardImage extends StatelessWidget {
  final String characterCardImage;

  const CharacterCardImage({
    Key key,
    @required this.characterCardImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: CachedNetworkImage(
          imageUrl: characterCardImage,
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
