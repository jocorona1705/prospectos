import 'package:flutter/material.dart';

class SuperFloatingAction extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.of(context).pushNamed('ContadorProvider');
          },
        ),
      ],
    );
  }
}