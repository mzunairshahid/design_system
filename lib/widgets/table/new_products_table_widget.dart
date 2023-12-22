import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class NewProductTableWidget extends StatelessWidget {
  final String productBrand;
  final String productID;
  final String productStock;
  final String productPrice;

  const NewProductTableWidget({
    super.key,
    required this.productBrand,
    required this.productID,
    required this.productStock,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        const TableRow(
          // Define the first row
          children: [
            TableCell(
              child: Text(
                'Brand',
                style: kCardSubtitle,
              ),
            ),
            TableCell(
              child: Text(
                'ID',
                style: kCardSubtitle,
              ),
            ),
            TableCell(
              child: Text(
                'Stock',
                style: kCardSubtitle,
              ),
            ),
            TableCell(
              child: Text('Price', style: kCardSubtitle),
            ),
          ],
        ),
        TableRow(
          // Define the second row
          children: [
            TableCell(
              child: Text(productBrand, style: kSmallRegular),
            ),
            TableCell(
              child: Text(productID, style: kSmallRegular),
            ),
            TableCell(
              child: Text(productStock, style: kSmallRegular),
            ),
            TableCell(
              child: Text(
                '\$$productPrice',
                style: kSmallRegular,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
