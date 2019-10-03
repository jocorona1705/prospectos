import 'package:flutter/material.dart';

class ContadorInfo with ChangeNotifier {

  int _contador = 0;

  get contadorGet{
    return _contador;
  }

  set contadorSet(int numero){
    this._contador = _contador + numero;
    notifyListeners();
  }
  
}