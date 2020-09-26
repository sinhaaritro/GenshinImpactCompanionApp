import 'package:GenshinImpactCompanionApp/shared/widgets/text_parser.dart';
import 'package:flutter/material.dart';

class AboutTheItemSection extends StatelessWidget {
  final String itemDesc;
  final String itemType;

  const AboutTheItemSection({
    Key key,
    this.itemDesc,
    this.itemType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "About the $itemType",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextParser(text: itemDesc),
        ),
      ],
    );
  }
}
