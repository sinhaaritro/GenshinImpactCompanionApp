import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class WeaponListScreen extends StatefulWidget {
  @override
  _WeaponListScreenState createState() => _WeaponListScreenState();
}

class _WeaponListScreenState extends State<WeaponListScreen> {
  // CharacterList _characterList;
  var weaponList;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final String jsonString =
        await rootBundle.loadString('assets/text/genshin_impact_data.json');
    final decodedJson = jsonDecode(jsonString);

    // _characterList = CharacterList.fromJson(decodedJson);
    // print(decodedJson);
    // print('object');
    // print(_characterList.toJson());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
    // weaponList == null
    //     ? const Center(
    //         child: CircularProgressIndicator(),
    //       )
    //     : ListView(
    //         padding: const EdgeInsets.all(16.0),
    //         children: [
    //           Wrap(
    //             alignment: WrapAlignment.center,
    //             spacing: 16.0,
    //             runSpacing: 16.0,
    //             children: CharacterList.characters
    //                 .map(
    //                   (character) => InkWell(
    //                     onTap: () {
    //                       Navigator.push(
    //                         context,
    //                         MaterialPageRoute(
    //                           builder: (context) => CharacterDetail(
    //                             character: character,
    //                           ),
    //                         ),
    //                       );
    //                     },
    //                     child: ItemCard(
    //                       itemName: character.name,
    //                       itemCardImage: character.icon,
    //                     ),
    //                   ),
    //                 )
    //                 .toList(),
    //           ),
    //         ],
    //       );
  }
}
