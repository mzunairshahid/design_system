import 'package:flutter/material.dart';
import 'package:ouditor_design_system/screens/app_drawer.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/card_widget/products_card_widget.dart';
import 'package:ouditor_design_system/widgets/dropdown_widget/action_dropdown_widget.dart';
import 'package:ouditor_design_system/widgets/dropdown_widget/rows_dropdown_widget.dart';
import 'package:ouditor_design_system/components/search_bar/white_background_search_bar.dart';

class LeaderBordScreen extends StatelessWidget {
  const LeaderBordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Center(child: Text('Sales Analytics', style: kLargeSemibold)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications, color: kAppBarColor),
          ),
        ],
      ),
      drawer: const SafeArea(child: AppDrawer()),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Product',
                style: kMediumLargeSemibold,
              ),
              SizedBox(
                height: 16,
              ),
              WhiteBackgroungSearchBarWidget(
                labelText: 'Search Product',
              ),
              SizedBox(
                height: 10,
              ),
              ActionDropdownWidget(),
              SizedBox(
                height: 30,
              ),
              NewProductsCardWidget(
                productTitle: 'Macbook Pro M1 2021',
                subtitle: 'Electronic',
                productBrand: 'Apple',
                productID: '21312',
                productStocks: '290',
                productPrice: '1.029',
              ),
              NewProductsCardWidget(
                productTitle: 'Samsung Galaxy S21 Ultra',
                subtitle: 'Electronic',
                productBrand: 'Samsung',
                productID: '21312',
                productStocks: '290',
                productPrice: '1.029',
              ),
              NewProductsCardWidget(
                productTitle: 'Apple Airpods',
                subtitle: 'Electronic',
                productBrand: 'Apple',
                productID: '21312',
                productStocks: '290',
                productPrice: '1.029',
              ),
              NewProductsCardWidget(
                productTitle: 'Nike Air Jordan 293',
                subtitle: 'Fashion',
                productBrand: 'Nike',
                productID: '21312',
                productStocks: '290',
                productPrice: '1.029',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1-8 of 5432 Assets',
                    style: kSmallMedium,
                  ),
                  RowsDropdownWidget()
                ],
              ),
              // PaginationWidget()
            ],
          ),
        ),
      ),
    );
  }
}
