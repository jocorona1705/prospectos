import 'package:flutter/material.dart';

class FormularioAlta extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Text(
            'Nombre de prospecto', 
            textAlign: TextAlign.right,
          ),
          TextFormField(
            textAlign: TextAlign.left,
            validator: (value){
              if( value.isEmpty){
                return 'El campo no puede estar vacio';
              }
              else {
                return null;
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                  
              },
              child: Text('Guardar'),
            ),
          )
        ],
      ),
    );
  }
}