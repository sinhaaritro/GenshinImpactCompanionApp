import 'package:GenshinImpactCompanionApp/models/element_type_model.dart';
import 'package:GenshinImpactCompanionApp/models/regex_pattern_matcher_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';

class TextParser extends StatelessWidget {
  final String text;

  const TextParser({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParsedText(
      text: text,
      style: Theme.of(context).textTheme.bodyText2,
      parse: <MatchText>[
        MatchText(
          pattern: RegKeywordsTags.headingTags,
          style: Theme.of(context).textTheme.headline6.merge(const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.normal,
              )),
        ),
        MatchText(
            pattern: RegKeywordsTags.inParagraphTags,
            style: Theme.of(context).textTheme.bodyText1),
        MatchText(
          pattern: RegKeywordsTags.officialWebsiteDescription,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementAnemoPattern,
          style: TextStyle(
            color: ElementTypeModel.elementTypeColor('Anemo'),
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementCryoPattern,
          style: TextStyle(
            color: ElementTypeModel.elementTypeColor('Cryo'),
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementDendroPattern,
          style: TextStyle(
            color: ElementTypeModel.elementTypeColor('Dendro'),
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementElectroPattern,
          style: TextStyle(
            color: ElementTypeModel.elementTypeColor('Electro'),
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementGeoPattern,
          style: TextStyle(
            color: ElementTypeModel.elementTypeColor('Geo'),
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementHydroPattern,
          style: TextStyle(
            color: ElementTypeModel.elementTypeColor('Hydro'),
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementPyroPattern,
          style: TextStyle(
            color: ElementTypeModel.elementTypeColor('Pyro'),
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.passiveName,
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
