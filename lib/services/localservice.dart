import 'dart:convert';

import 'package:app_iti/model/person.dart';
import 'package:flutter/services.dart';

class LocalService {
  // load and decode
  Future<String> _loadPersonAsset() async {
    return await rootBundle.loadString('assets/data/info.json');
  }

  Future<Person> loadPerson() async {
    String jsonString = await _loadPersonAsset();

    final jsonResponse = json.decode(jsonString);

    return Person.fromJson(jsonResponse);
  }
}
