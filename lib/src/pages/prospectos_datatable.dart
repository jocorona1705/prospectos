import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prospectos/src/providers/prospectos_info.dart';

class DataTableOfProspectos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final prospectosInfo = Provider.of<ProspectosInfo>(context);
    var prospectos = prospectosInfo.fetchPost();

    return Column(
      children: <Widget>[
        Text(prospectos.toString())
      ],
    );
  }
}