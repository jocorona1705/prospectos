import 'package:flutter/material.dart';

class DetallesProspecto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalles de Ivan Coronado')),
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Jose Ivan Coronado Vega'),
              subtitle: Text(
                'Nombres',
                style: TextStyle(color: Colors.black54),
              ),
              leading: IconButton(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  onPressed: () {}),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('+52 (871) 95 55 44'),
              subtitle: Text(
                'Telefono',
                style: TextStyle(color: Colors.black54),
              ),
              leading: IconButton(
                  icon: Icon(Icons.phone, color: Colors.indigo),
                  onPressed: () {}),
              trailing: IconButton(icon: Icon(Icons.message), onPressed: () {}),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('joseivan.coronado79@gmail.com'),
              subtitle: Text(
                'Email',
                style: TextStyle(color: Colors.black54),
              ),
              leading: IconButton(
                  icon: Icon(Icons.email, color: Colors.indigo),
                  onPressed: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
