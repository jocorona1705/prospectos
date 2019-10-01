import 'package:flutter/material.dart';
import 'package:flutter/src/material/data_table.dart';
// import 'package:provider/provider.dart';
// import 'package:prospectos/src/providers/prospectos_info.dart';

class DataTableOfProspectos extends StatelessWidget {

  void _getSelectedRowInfo() {
    print('Selected Item Row Name Here...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable Sample'),
      ),
      body: Container(
        child: DataTable(
          onSelectAll: (b) {},
          sortAscending: true,
          columns: <DataColumn>[
            DataColumn(
              label: Text('Item'),
            ),
            DataColumn(
              label: Text('Price'),
            ),
          ],
          rows: items
              .map(
                (itemRow) => DataRow(
                      cells: [
                        DataCell(
                          Text(itemRow.itemName),
                          showEditIcon: false,
                          placeholder: false,
                        ),
                        DataCell(
                          Text(itemRow.itemPrice),
                          showEditIcon: true,
                          placeholder: false,
                          onTap: _getSelectedRowInfo,
                        ),
                      ],
                    ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class ItemInfo {
  String itemName;
  String itemPrice;

  ItemInfo({
    this.itemName,
    this.itemPrice,
  });
}

var items = <ItemInfo>[
  ItemInfo(
    itemName: 'Item A',
    itemPrice: '250',
  ),
  ItemInfo(
    itemName: 'Item B',
    itemPrice: '100',
  ),
  ItemInfo(
    itemName: 'Item C',
    itemPrice: '150',
  ),
];