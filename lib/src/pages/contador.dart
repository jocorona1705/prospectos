import 'package:flutter/material.dart';

//contador usando stateful 

class Contador extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _ContadorState();

  }

class _ContadorState extends State<Contador> {

  final _estiloTexto = TextStyle(fontSize: 25.0); 
  int _contador = 10;

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
            Text('Numero de clicks:', style: _estiloTexto),
            Text('$_contador', style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _contador++; 
          });
        },
      ),
    );
  }
}
