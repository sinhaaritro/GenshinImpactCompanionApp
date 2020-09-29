import 'package:flutter/material.dart';

class DisclaimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disclaimer Page"),
        // leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const <Widget>[
            Text(
                "Please read this carefully before using the app. This app is developed by Crescent Scope Studios and is in no way, shape or form related to or affiliated with the creators of Genshin Impact. Genshin Impact is the registered trademark of miHoYo Co Ltd. All images/resources and data used in the app are freely available on the internet."),
            Text(
                "Geshin Impact Companion App is solely intended for educational and recreational purposes only."),
            Text("""
Crescent Scope Studios makes no claims or provides no guarantee of the correctness of the information provided in the app, although we strive to provide accurate information whenever possible. The information provided in the app is provided on "as is" basis and is subject to change, altered or removed entirely without prior notice and Crescent Scope Studios takes no responsibility whatsoever in any such case."""),
            Text(
                "Crescent Scope Studios takes no responsibility or holds no liability for any losses, harm, physical or otherwise of any individuals, entities or any data that happens in relation to our app."),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
