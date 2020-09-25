import 'dart:convert';

import 'package:GenshinImpactCompanionApp/models/character_list_model.dart';
import 'package:GenshinImpactCompanionApp/screens/character_list_screen/widgets/character_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart' show rootBundle;

class CharacterListScreen extends StatefulWidget {
  @override
  _CharacterListScreenState createState() => _CharacterListScreenState();
}

class _CharacterListScreenState extends State<CharacterListScreen> {
  CharacterList _characterList;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final String jsonString =
        await rootBundle.loadString('assets/text/genshin_impact_data.json');
    final decodedJson = jsonDecode(jsonString);

    _characterList = CharacterList.fromJson(decodedJson);
    // print(decodedJson);
    // print('object');
    // print(_characterList.toJson());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Character List'),
      ),
      body: _characterList == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 16.0,
                runSpacing: 16.0,
                children: CharacterList.characters
                    .map(
                      (character) => CharacterCard(character: character),
                    )
                    .toList(),
              ),
            ),
    );
  }
}
