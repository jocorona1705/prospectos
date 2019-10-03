import 'package:flutter/material.dart';
import 'package:prospectos/src/pages/detalles_page.dart';
import 'package:prospectos/src/pages/formulario_page.dart';
import 'package:prospectos/src/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:prospectos/src/providers/prospectos_info.dart';
import 'src/pages/contador.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => ProspectosInfo(),)
      ],
      child: MaterialApp(
        title: 'Prospectos',
        initialRoute: 'home',
        routes: <String, WidgetBuilder> {
          'home': (BuildContext context) => HomePage(),
          'AltaProspecto':(BuildContext context) => FormularioAlta(),
          'DetallesProspecto': (BuildContext context) => DetallesProspecto(),
          'Contador': (BuildContext context) => Contador()
        },
      ),
    );
  }
}


