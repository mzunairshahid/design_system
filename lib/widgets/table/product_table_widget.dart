import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class ProductTableWidget extends StatelessWidget {
  final String productName;
  final String productID;
  final String productStock;
  final String productPrice;

  const ProductTableWidget(
      {super.key,
      required this.productName,
      required this.productID,
      required this.productStock,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    // TextStyle title = kExtraSmallMedium;
    return DataTable(columns: const [
      DataColumn(
        label: Text('Brand', style: kExtraSmallMedium),
      ),
      DataColumn(
        label: Text('ID', style: kExtraSmallMedium),
      ),
      DataColumn(
        label: Text('Stock', style: kExtraSmallMedium),
      ),
      DataColumn(
        label: Text('Price', style: kExtraSmallMedium),
      ),
    ], rows: [
      DataRow(cells: [
        DataCell(
          Text(productName),
        ),
        DataCell(
          Text(productID),
        ),
        DataCell(
          Text(productStock),
        ),
        DataCell(
          Text('\$$productPrice'),
        ),
      ]),
    ]);
  }
}
