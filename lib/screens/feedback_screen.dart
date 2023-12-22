import 'package:flutter/material.dart';
import 'package:ouditor_design_system/widgets/card_widget/contact_card_widget.dart';
import 'package:ouditor_design_system/widgets/responsive/two_widgets_responsive.dart';
import 'package:ouditor_design_system/widgets/text_fields/description_text_field_widget.dart';
import '../utilities/constant.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/button/big_button/primary_big_button_widget.dart';
import '../widgets/text_fields/simple_textfield_widget.dart';
import 'app_drawer.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({super.key});

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          logoUrl: 'lib/asset/images/logo.png',
          pageTitle: 'Dashboard',
          icon: Icons.notifications,
          onPressed: () {}),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TwoWidgetsResponsive(
                  w1: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Contact', style: kLargeBold),
                      SizedBox(height: 20),
                      Card(
                          child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            ContactCardWidget(
                                imageUrl: 'lib/asset/images/call_icon.png',
                                text: '+1 102 185 309'),
                            SizedBox(height: 20),
                            ContactCardWidget(
                                imageUrl:
                                    'lib/asset/images/email_active_icon.png',
                                text: 'sales.analytics@email.com'),
                            SizedBox(height: 20),
                            ContactCardWidget(
                                imageUrl:
                                    'lib/asset/images/location_active_icon.png',
                                text:
                                    '2715 Ash Dr. San Jose, South Dakota 83475'),
                            SizedBox(height: 20),
                          ],
                        ),
                      )),
                    ],
                  ),
                  w2: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Feedbacks', style: kLargeBold),
                      const SizedBox(height: 20),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Full Name',
                                style: kExtraSmalSemibold,
                              ),
                              SimpleTextFieldWidget(
                                  hintText: 'Enter full name',
                                  controller: _fullNameController,
                                  keyboardType: TextInputType.multiline),
                              const SizedBox(height: 20),
                              const Text(
                                'Email',
                                style: kExtraSmalSemibold,
                              ),
                              SimpleTextFieldWidget(
                                  hintText: 'Enter email',
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress),
                              const SizedBox(height: 20),
                              const Text(
                                'Email',
                                style: kExtraSmalSemibold,
                              ),
                              DescriptionTextFieldWidget(
                                  hintText: 'Describe your problem',
                                  controller: _descriptionController,
                                  keyboardType: TextInputType.multiline),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  BigPrimaryButtonWidget(
                                      label: 'Submit', onPressed: () {}),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
