import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prospectos/src/models/prospecto_model.dart';

class ProspectosInfo with ChangeNotifier {

  Future<Prospecto> fetchPost() async {
    final response = await http.get('http://192.168.1.204/api/values/1');

    if (response.statusCode == 200) {
      return Prospecto.fromJson(json.decode(response.body));
    } else {    
      throw Exception('Failed to load post');
    }
  }
}

// Future<String> httpGet(String url){

//   return Future.delayed(new Duration(seconds: 4), (){
//     return 'Hola Mundo';
//   });

// }