import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class EarningHistoryTableWidget extends StatelessWidget {
  const EarningHistoryTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          children: const [
            TableRow(children: [
              TableCell(
                child: Text('Referrer', style: kActionDropdownStyle),
              ),
              TableCell(
                child: Text('View', style: kActionDropdownStyle),
              ),
              TableCell(
                child: Text('Sales', style: kActionDropdownStyle),
              ),
              TableCell(
                child: Text('Convertion', style: kActionDropdownStyle),
              ),
              TableCell(
                child: Text('Total', style: kActionDropdownStyle),
              ),
            ]),
            TableRow(children: [
              TableCell(child: Text('Instagram', style: kSmallMedium)),
              TableCell(child: Text('124', style: kSmallRegular)),
              TableCell(child: Text('21', style: kSmallRegular)),
              TableCell(child: Text('10,5%', style: kSmallRegular)),
              TableCell(child: Text('\$ 800', style: kSmallRegular)),
            ]),
            TableRow(children: [
              TableCell(child: Text('Instagram', style: kSmallMedium)),
              TableCell(child: Text('124', style: kSmallRegular)),
              TableCell(child: Text('21', style: kSmallRegular)),
              TableCell(child: Text('10,5%', style: kSmallRegular)),
              TableCell(child: Text('\$ 800', style: kSmallRegular)),
            ]),
            TableRow(children: [
              TableCell(child: Text('Instagram', style: kSmallMedium)),
              TableCell(child: Text('124', style: kSmallRegular)),
              TableCell(child: Text('21', style: kSmallRegular)),
              TableCell(child: Text('10,5%', style: kSmallRegular)),
              TableCell(child: Text('\$ 800', style: kSmallRegular)),
            ]),
            TableRow(children: [
              TableCell(child: Text('Instagram', style: kSmallMedium)),
              TableCell(child: Text('124', style: kSmallRegular)),
              TableCell(child: Text('21', style: kSmallRegular)),
              TableCell(child: Text('10,5%', style: kSmallRegular)),
              TableCell(child: Text('\$ 800', style: kSmallRegular)),
            ]),
            TableRow(children: [
              TableCell(child: Text('Instagram', style: kSmallMedium)),
              TableCell(child: Text('124', style: kSmallRegular)),
              TableCell(child: Text('21', style: kSmallRegular)),
              TableCell(child: Text('10,5%', style: kSmallRegular)),
              TableCell(child: Text('\$ 800', style: kSmallRegular)),
            ]),
            TableRow(children: [
              TableCell(child: Text('Instagram', style: kSmallMedium)),
              TableCell(child: Text('124', style: kSmallRegular)),
              TableCell(child: Text('21', style: kSmallRegular)),
              TableCell(child: Text('10,5%', style: kSmallRegular)),
              TableCell(child: Text('\$ 800', style: kSmallRegular)),
            ]),
          ],
        ),
      ),
    );
  }
}
