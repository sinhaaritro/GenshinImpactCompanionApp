import 'package:GenshinImpactCompanionApp/screens/home_screen.dart';
import 'package:GenshinImpactCompanionApp/services/admob_id.dart';
import 'package:GenshinImpactCompanionApp/services/admob_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: appId);
    _bannerAd = createBannerAd()
      ..load()
      ..show(anchorOffset: 56);
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genshin Impact Companion App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const HomeScreen(),
    );
  }
}
