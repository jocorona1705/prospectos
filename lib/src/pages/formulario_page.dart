import 'package:flutter/material.dart';

class FormularioAlta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de alta de prospectos'),
      ),
      body: Form(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('Jose Ivan coronado'),
                subtitle: Text(
                  'Nombre',
                  style: TextStyle(color: Colors.black54),
                ),
                leading: IconButton(
                    icon: Icon(Icons.person, color: Colors.indigo),
                    onPressed: () {}),
                trailing:
                    IconButton(icon: Icon(Icons.call), onPressed: () {}),
              ),
            ),
            TextFormField(
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Nombre',
                icon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Obrigatório';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Guardar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
