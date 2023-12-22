import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/widgets/table/product_table_widget.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Table'),
      ),
      body: const Column(
        children: [
          Expanded(
            flex: 1,
            child: ProductTableWidget(
                productName: 'Apple',
                productID: '21313',
                productStock: '543',
                productPrice: '1.56'),
          ),
        ],
      ),
    );
  }
}
