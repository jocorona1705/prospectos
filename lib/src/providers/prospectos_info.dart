import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prospectos/src/models/prospecto_model.dart';

class ProspectosInfo with ChangeNotifier {

  Future<Prospecto> fetchPost() async {
    final response = await http.get('https://dominio.com/posts/1');

    if (response.statusCode == 200) {
      return Prospecto.fromJson(json.decode(response.body));
    } else {    
      throw Exception('Failed to load post');
    }
  }
}