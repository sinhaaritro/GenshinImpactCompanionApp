import 'package:GenshinImpactCompanionApp/screens/artifact_set_list_screen/artifact_set_list_screen.dart';
import 'package:GenshinImpactCompanionApp/screens/character_list_screen/character_list_screen.dart';
import 'package:GenshinImpactCompanionApp/screens/more_screen/more_screen.dart';
import 'package:GenshinImpactCompanionApp/screens/weapon_list_screen/weapon_list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> bottomNavScreens = [
    CharacterListScreen(),
    WeaponListScreen(),
    AritfactSetListScreen(),
    // LoadingScreen(),
    MoreScreen()
  ];

  final List<String> topAppBarTitle = [
    "Characters",
    "Weapons",
    "Artifacts",
    // "",
    "More"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topAppBarTitle[currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Icon_Charcter.png')),
            title: Text('Character'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Icon_Weapon.png')),
            title: Text('Weapons'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Icon_Artifact.png')),
            title: Text('Artifacts'),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.school),
          //   title: Text('Items'),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More'),
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: bottomNavScreens,
      ),
    );
  }
}
