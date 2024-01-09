import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/components/check_lists/check_list_button_widget.dart';

class SixColumnTableWidget extends StatelessWidget {
  const SixColumnTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Table(
          children: const [
            TableRow(
              children: [
                TableCell(child: ChecklistButtonWidget()),
                TableCell(
                    child: Text(
                  'Product Name',
                  style: kActionDropdownStyle,
                )),
                TableCell(
                    child: Text(
                  'Brand',
                  style: kActionDropdownStyle,
                )),
                TableCell(
                    child: Text(
                  'ID',
                  style: kActionDropdownStyle,
                )),
                TableCell(
                    child: Text(
                  'Stock',
                  style: kActionDropdownStyle,
                )),
                TableCell(
                    child: Text(
                  'Price',
                  style: kActionDropdownStyle,
                )),
              ],
            ),
            // TableRow(children: [SizedBox(height: 10)]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
            TableRow(children: [
              TableCell(child: ChecklistButtonWidget()),
              TableCell(
                  child: Text(
                'Macbook Pro M1 2021',
                style: kExtraSmalSemibold,
              )),
              TableCell(child: Text('Apple', style: kSmallMedium)),
              TableCell(child: Text('21312', style: kSmallMedium)),
              TableCell(child: Text('290', style: kSmallMedium)),
              TableCell(child: Text('\$1.029', style: kSmallMedium)),
            ]),
          ],
        ),
      ),
    );
  }
}
