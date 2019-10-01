import 'package:flutter/material.dart';
import 'package:prospectos/src/pages/prospectos_datatable.dart';
import 'package:prospectos/src/widgets/superfloatingbuttons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de prospectos'),
      ),
      body: Center(
        child: DataTableOfProspectos(),
      ),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
