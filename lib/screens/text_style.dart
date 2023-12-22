import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class TextStyleScreen extends StatelessWidget {
  const TextStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Text Style',
          style: kMediumSemibold,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Extra Small - 12', style: kSmallBold),
                  Text('Small - 14', style: kSmallBold),
                  Text('Large - 20', style: kSmallBold),
                ],
              ),
              Divider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ExtraSmall/Regualr', style: kExtraSmallRegular),
                  Text('Small/Regular', style: kSmallRegular),
                  Text('Large/Regular', style: kLargeRegular),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ExtraSmall/Medium', style: kExtraSmallMedium),
                  Text('Small/Medium', style: kSmallMedium),
                  Text('Large/Medium', style: kLargeMedium),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ExtraSmall/Semibold', style: kExtraSmalSemibold),
                  Text('Small/Semibold', style: kSmallSemibold),
                  Text('Large/Semibold', style: kLargeSemibold),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ExtraSmall/Bold', style: kExtraSmallBold),
                  Text('Small/Bold', style: kSmallBold),
                  Text('Large/Bold', style: kLargeBold),
                ],
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Medium - 16', style: kSmallBold),
                  Text('Medium - 18', style: kSmallBold),
                  Text('Extra Large - 26', style: kSmallBold),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Medium-16/Regular', style: kMediumRegular),
                  Text('Medium-18/Regular', style: kMediumLargRegular),
                  Text('Extra Large/Regular', style: kExtraLargeRegular),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Medium-16/Medium', style: kMediumMedium),
                  Text('Medium-18/Medium', style: kMediumLargeMedium),
                  Text('Extra Large/Medium', style: kExtraLargeMedium),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Medium-16/Semibold', style: kMediumSemibold),
                  Text('Medium-18/Semibold', style: kMediumLargeSemibold),
                  Text('Extra Large/Semibold', style: kExtraLargeSemibold),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Medium-16/Bold', style: kMediumBold),
                  Text('Medium-18/Bold', style: kMediumLargeBold),
                  Text('Extra Large/Bold', style: kExtraLargeBold),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
