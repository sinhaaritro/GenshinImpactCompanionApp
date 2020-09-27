import 'dart:convert';
import 'package:GenshinImpactCompanionApp/models/artifact_set_model.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/text_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AritfactSetListScreen extends StatefulWidget {
  @override
  _AritfactSetListScreenState createState() => _AritfactSetListScreenState();
}

class _AritfactSetListScreenState extends State<AritfactSetListScreen> {
  ArtifactSetList _artifactSetList;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final String jsonString =
        await rootBundle.loadString('assets/text/genshin_impact_data.json');
    final decodedJson = jsonDecode(jsonString);

    _artifactSetList = ArtifactSetList.fromJson(decodedJson);
    // print(decodedJson);
    // print('object');
    // print(_AritfactSetList.toJson());
    // print(ArtifactSetList.artifactSets[0].name);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return _artifactSetList == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView(
            padding: const EdgeInsets.all(16.0),
            children: ArtifactSetList.artifactSets
                .map(
                  (artifactSet) => Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${artifactSet.name}'s Set",
                            textAlign: TextAlign.justify,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(height: 16),
                          TextParser(
                              text: "2 Piece Bonus: ${artifactSet.bonus_2}"),
                          TextParser(
                              text: "4 Piece Bonus: ${artifactSet.bonus_4}")
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          );
  }
}
