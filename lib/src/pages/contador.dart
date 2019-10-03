import 'package:flutter/material.dart';

class Contador extends StatelessWidget{

  final estiloTexto = TextStyle(fontSize: 25.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
        centerTitle: false,
        elevation: 15.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: estiloTexto),
            Text('0', style: estiloTexto)
          ],
        ),
      ),
    );
  }
  
}
