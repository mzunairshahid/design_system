import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/check_lists/check_list_button_widget.dart';
import 'package:ouditor_design_system/widgets/table/new_products_table_widget.dart';

class NewProductsCardWidget extends StatelessWidget {
  final String productTitle;
  final String subtitle;
  final String productBrand;
  final String productID;
  final String productStocks;
  final String productPrice;

  const NewProductsCardWidget(
      {super.key,
      required this.productTitle,
      required this.subtitle,
      required this.productBrand,
      required this.productID,
      required this.productStocks,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 55),
                child: const ChecklistButtonWidget()),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productTitle,
                    style: kSmallSemibold,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    style: kProductSubtitle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  NewProductTableWidget(
                      productBrand: productBrand,
                      productID: productID,
                      productStock: productStocks,
                      productPrice: productPrice)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
