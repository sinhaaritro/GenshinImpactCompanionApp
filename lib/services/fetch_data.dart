import 'dart:convert';
import 'package:http/http.dart' as http;

class FetchData {
  static dynamic decodedJson;

  static Future fetchData() async {
    const url =
        "https://raw.githubusercontent.com/sinhaaritro/GenshinImpactData/master/genshin_impact_data.json";

    final jsonString = await http.get(url);
    // var decodedJson = jsonDecode(res.body);

    // final String jsonString =
    // await rootBundle.loadString('assets/text/genshin_impact_data.json');
    decodedJson = jsonDecode(jsonString.body);
  }
}
