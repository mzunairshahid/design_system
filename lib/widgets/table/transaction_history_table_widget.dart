import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class TransactionHistorcardTableWidget extends StatelessWidget {
  final String date;
  final String amount;
  final Widget labelButton;

  const TransactionHistorcardTableWidget(
      {super.key,
      required this.date,
      required this.amount,
      required this.labelButton});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        const TableRow(
          // Define the first row
          children: [
            TableCell(
              child: Text(
                'Date',
                style: kCardSubtitle,
              ),
            ),
            TableCell(
              child: Text(
                'Amount',
                style: kCardSubtitle,
              ),
            ),
            TableCell(
              child: Text(
                'Status',
                style: kCardSubtitle,
              ),
            ),
          ],
        ),
        TableRow(
          // Define the second row
          children: [
            TableCell(
              child: Text(
                date,
                style: kSmallRegular,
              ),
            ),
            TableCell(
              child: Text(
                amount,
                style: kSmallRegular,
              ),
            ),
            Center(
              child: TableCell(
                child: labelButton,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
