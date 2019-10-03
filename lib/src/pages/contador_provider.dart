import 'package:flutter/material.dart';
import 'package:prospectos/src/providers/contador_provider.dart';
import 'package:provider/provider.dart';

class ContadorProvider extends StatelessWidget {

  final _estiloTexto = TextStyle(fontSize: 25.0); 
  
  @override
  Widget build(BuildContext context) {

    final contadorInfo = Provider.of<ContadorInfo>(context);

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
            Text(contadorInfo.contadorGet.toString(), style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          contadorInfo.contadorSet = 1;
        },
      ),
    );
  }

  

}