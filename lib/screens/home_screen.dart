import 'package:GenshinImpactCompanionApp/screens/character_list_screen/character_list_screen.dart';
import 'package:GenshinImpactCompanionApp/screens/loading.dart';
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
    LoadingScreen(),
    LoadingScreen(),
    LoadingScreen()
  ];

  final List<String> topAppBarTitle = ["Characters", "Weapons", "", "", ""];

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
            icon: Icon(Icons.account_circle),
            title: Text('Character'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Weapons'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Artifacts'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Items'),
          ),
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
