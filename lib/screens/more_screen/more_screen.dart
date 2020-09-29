import 'package:GenshinImpactCompanionApp/screens/disclaimer_screen/disclaimer_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Official Game Website"),
          onTap: () => launch('https://genshin.mihoyo.com/'),
        ),
        const Divider(),
        ListTile(
          title: const Text("Disclaimer"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DisclaimerScreen()),
            );
          },
        ),
        ListTile(
          title: const Text("Discord Contact"),
          subtitle: const Text("Incase there is wrong info in the app"),
          onTap: () => launch('https://discord.gg/9J4W4Cr'),
        ),
      ],
    );
  }
}
