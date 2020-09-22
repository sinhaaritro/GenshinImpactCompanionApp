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
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      parse: <MatchText>[
        MatchText(
          pattern: RegKeywordsTags.headingTags,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            color: Colors.amber,
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.inParagraphTags,
          style: const TextStyle(
            color: Colors.amber,
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.officialWebsiteDescription,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementAnemoPattern,
          style: const TextStyle(
            color: Colors.lightGreen,
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementCryoPattern,
          style: const TextStyle(
            color: Colors.cyan,
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementDendroPattern,
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementElectroPattern,
          style: const TextStyle(
            color: Colors.lightBlue,
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementGeoPattern,
          style: const TextStyle(
            color: Colors.yellow,
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementHydroPattern,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
        MatchText(
          pattern: RegKeywordsTags.elementPyroPattern,
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
