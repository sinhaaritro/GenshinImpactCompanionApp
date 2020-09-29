import 'package:GenshinImpactCompanionApp/models/artifact_set_model.dart';
import 'package:GenshinImpactCompanionApp/services/fetch_data.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/text_parser.dart';
import 'package:flutter/material.dart';

class AritfactSetListScreen extends StatefulWidget {
  @override
  _AritfactSetListScreenState createState() => _AritfactSetListScreenState();
}

class _AritfactSetListScreenState extends State<AritfactSetListScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    if (FetchData.decodedJson == null) await FetchData.fetchData();
    ArtifactSetList.fromJson(FetchData.decodedJson);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ArtifactSetList.artifactSets == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: ListView(
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
            ),
          );
  }
}
