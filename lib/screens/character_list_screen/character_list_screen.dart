import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_detail_screen/character_detail_screen.dart';
import 'package:GenshinImpactCompanionApp/services/fetch_data.dart';
import 'package:GenshinImpactCompanionApp/shared/widgets/item_card/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CharacterListScreen extends StatefulWidget {
  @override
  _CharacterListScreenState createState() => _CharacterListScreenState();
}

class _CharacterListScreenState extends State<CharacterListScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    // final String jsonString =
    // await rootBundle.loadString('assets/text/genshin_impact_data.json');
    // final decodedJson = jsonDecode(jsonString);
    // print(decodedJson.runtimeType);

    if (FetchData.decodedJson == null) await FetchData.fetchData();
    CharacterList.fromJson(FetchData.decodedJson);

    // CharacterList.fromJson(decodedJson);
    // print(decodedJson);
    // print('object');
    // print(_characterList.toJson());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CharacterList.characters == null
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16.0,
                runSpacing: 16.0,
                children: CharacterList.characters
                    .map(
                      (character) => InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CharacterDetail(
                                character: character,
                              ),
                            ),
                          );
                        },
                        child: ItemCard(
                          itemName: character.name,
                          itemCardImage: character.icon,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          );
  }
}
