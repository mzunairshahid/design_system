import 'package:flutter/material.dart';
import 'package:ouditor_design_system/screens/app_drawer.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/widgets/appbar_widget.dart';
import 'package:ouditor_design_system/widgets/avatar/medium_avatar_widget.dart';
import 'package:ouditor_design_system/widgets/button/big_button/primary_big_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/medium_button/secondary_medium_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/small_button/secondary_small_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/small_button/tertiary_small_buton_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/security_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/setting_card_widget.dart';
import 'package:ouditor_design_system/widgets/responsive/two_widgets_responsive.dart';
import '../utilities/constant.dart';
import '../widgets/button/toggle_widget.dart';
import '../widgets/text_fields/dropdown_text_field_widget.dart';
import '../widgets/text_fields/simple_textfield_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int selectIndex = 0;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _provinceController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TwoWidgetsResponsive(
                  w1: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Menu', style: kLargeBold),
                      const SizedBox(height: 20),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SettingCardWidget(
                                  iconUrl: 'lib/asset/images/personal_icon.png',
                                  text: 'Personal',
                                  onPress: () {
                                    setState(() {
                                      selectIndex = 0;
                                    });
                                  }),
                              const Divider(),
                              SettingCardWidget(
                                  iconUrl:
                                      'lib/asset/images/notification_icon.png',
                                  text: 'Notification',
                                  onPress: () {
                                    setState(() {
                                      selectIndex = 1;
                                    });
                                  }),
                              const Divider(),
                              SettingCardWidget(
                                  iconUrl: 'lib/asset/images/security_icon.png',
                                  text: 'Security',
                                  onPress: () {
                                    setState(() {
                                      selectIndex = 2;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  w2: Column(
                    children: [
                      if (selectIndex == 0)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Personal Information',
                                style: kMediumLargeSemibold),
                            const SizedBox(height: 20),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      const MediumAvatarWidget(
                                          backgroundColor:
                                              kPrimaryHoverButtonColor,
                                          imageUrl:
                                              'lib/asset/images/profle.png'),
                                      const SizedBox(width: 10),
                                      SmallSecondaryButtonWidget(
                                          label: 'Change Picture',
                                          onPressed: () {}),
                                      const SizedBox(width: 10),
                                      SmallTertiaryButtonWidget(
                                          label: 'Delete', onPressed: () {}),
                                    ]),
                                    const SizedBox(height: 25),
                                    const Text(
                                      'First Name',
                                      style: kExtraSmalSemibold,
                                    ),
                                    SimpleTextFieldWidget(
                                        hintText: 'Input Text Here',
                                        controller: _firstNameController,
                                        keyboardType: TextInputType.multiline),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Last Name',
                                      style: kExtraSmalSemibold,
                                    ),
                                    SimpleTextFieldWidget(
                                        hintText: 'Input Text Here',
                                        controller: _lastNameController,
                                        keyboardType: TextInputType.multiline),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Email',
                                      style: kExtraSmalSemibold,
                                    ),
                                    SimpleTextFieldWidget(
                                        hintText: 'Enter email address',
                                        controller: _emailController,
                                        keyboardType:
                                            TextInputType.emailAddress),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Country / Region',
                                      style: kExtraSmalSemibold,
                                    ),
                                    const DropdownTextFieldWidget(),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'City',
                                      style: kExtraSmalSemibold,
                                    ),
                                    SimpleTextFieldWidget(
                                        hintText: 'City',
                                        controller: _cityController,
                                        keyboardType:
                                            TextInputType.emailAddress),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Sate / Province',
                                      style: kExtraSmalSemibold,
                                    ),
                                    SimpleTextFieldWidget(
                                        hintText: 'State / Province',
                                        controller: _provinceController,
                                        keyboardType:
                                            TextInputType.emailAddress),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'ZIP / Postal',
                                      style: kExtraSmalSemibold,
                                    ),
                                    SimpleTextFieldWidget(
                                        hintText: '12345',
                                        controller: _postalCodeController,
                                        keyboardType:
                                            TextInputType.emailAddress),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        BigPrimaryButtonWidget(
                                            label: 'Save Changes',
                                            onPressed: () {}),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      else if (selectIndex == 1)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Notifications',
                                style: kMediumLargeSemibold),
                            const SizedBox(height: 20),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Order Confirmation',
                                        style: kMediumLargeSemibold),
                                    const SizedBox(height: 6),
                                    const Text(
                                        'If the order reminder function is enabled, it will need to be reconfirmed everytime an order is submitted.',
                                        style: kCardSubtitle),
                                    const SizedBox(height: 15),
                                    const Row(
                                      children: [
                                        ToggleButtonWidget(isDisabled: false),
                                        SizedBox(width: 30),
                                        Text('Limit Order',
                                            style: kSmallMedium),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Row(
                                      children: [
                                        ToggleButtonWidget(isDisabled: false),
                                        SizedBox(width: 30),
                                        Text('Market Order',
                                            style: kSmallMedium),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Row(
                                      children: [
                                        ToggleButtonWidget(isDisabled: false),
                                        SizedBox(width: 30),
                                        Text('Stop-Limit Order',
                                            style: kSmallMedium),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Row(
                                      children: [
                                        ToggleButtonWidget(isDisabled: true),
                                        SizedBox(width: 30),
                                        Text('Auto Borrow / Replay for Margin',
                                            style: kSmallMedium),
                                      ],
                                    ),
                                    const SizedBox(height: 35),
                                    const Text('Notification',
                                        style: kMediumLargeSemibold),
                                    const SizedBox(height: 6),
                                    const Text(
                                        'This will affect the the language settings of E-mail and App push',
                                        style: kCardSubtitle),
                                    const SizedBox(height: 6),
                                    const Row(
                                      children: [
                                        ToggleButtonWidget(isDisabled: false),
                                        SizedBox(width: 30),
                                        Text('Activities', style: kSmallMedium),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Row(
                                      children: [
                                        ToggleButtonWidget(isDisabled: false),
                                        SizedBox(width: 30),
                                        Text('Trade Notification',
                                            style: kSmallMedium),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Row(
                                      children: [
                                        ToggleButtonWidget(isDisabled: false),
                                        SizedBox(width: 30),
                                        Text('Spectrum News',
                                            style: kSmallMedium),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Row(
                                      children: [
                                        ToggleButtonWidget(isDisabled: false),
                                        SizedBox(width: 30),
                                        Text('System Messages',
                                            style: kSmallMedium),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        BigPrimaryButtonWidget(
                                            label: 'Save Changes',
                                            onPressed: () {}),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      else if (selectIndex == 2)
                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Two Factor Authetification (2Fa)',
                                    style: kMediumLargeSemibold),
                                const SizedBox(height: 20),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        SecurityCardWidget(
                                            avatarBackgroundColor:
                                                kSecondaryHoverButtonColor,
                                            avatarIconUrl:
                                                'lib/asset/images/security_key_icon.png',
                                            tile: 'Security Key',
                                            subtitle:
                                                'Protect your account with a asecurity key',
                                            iconUrl:
                                                'lib/asset/images/report_icon.png',
                                            iconColor: kPendingButonTextColor,
                                            iconText: 'UNSET',
                                            button: MediumSecondaryButtonWidget(
                                                label: 'Enable',
                                                onPressed: () {})),
                                        const SizedBox(height: 20),
                                        SecurityCardWidget(
                                            avatarBackgroundColor:
                                                kSecondaryHoverButtonColor,
                                            avatarIconUrl:
                                                'lib/asset/images/phone_icon.png',
                                            tile: 'Phone Number Verification',
                                            subtitle:
                                                'Protect your account and transactions',
                                            iconUrl:
                                                'lib/asset/images/report_icon.png',
                                            iconColor: kPendingButonTextColor,
                                            iconText: '081*********',
                                            button: MediumSecondaryButtonWidget(
                                                label: 'Change',
                                                onPressed: () {})),
                                        const SizedBox(height: 20),
                                        SecurityCardWidget(
                                            avatarBackgroundColor:
                                                kSecondaryHoverButtonColor,
                                            avatarIconUrl:
                                                'lib/asset/images/email_icon.png',
                                            tile: 'Email Address Verification',
                                            subtitle:
                                                'Protect your account and transactions',
                                            iconUrl:
                                                'lib/asset/images/report_icon.png',
                                            iconColor: kPendingButonTextColor,
                                            iconText: 'jac***@email.com',
                                            button: MediumSecondaryButtonWidget(
                                                label: 'Change',
                                                onPressed: () {})),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Advanced Security',
                                    style: kMediumLargeSemibold),
                                const SizedBox(height: 20),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        SecurityCardWidget(
                                            avatarBackgroundColor:
                                                kSecondaryHoverButtonColor,
                                            avatarIconUrl:
                                                'lib/asset/images/security_key_icon.png',
                                            tile: 'Login Password',
                                            subtitle:
                                                'Protect your account with a asecurity key',
                                            iconUrl:
                                                'lib/asset/images/report_icon.png',
                                            iconColor: kPendingButonTextColor,
                                            iconText: 'ACTIVE',
                                            button: MediumSecondaryButtonWidget(
                                                label: 'Enable',
                                                onPressed: () {})),
                                        const SizedBox(height: 20),
                                        SecurityCardWidget(
                                            avatarBackgroundColor:
                                                kSecondaryHoverButtonColor,
                                            avatarIconUrl:
                                                'lib/asset/images/phone_icon.png',
                                            tile: 'Withdrawal Whitelist',
                                            subtitle:
                                                'Your account will only be able to withdraw to whitelisted withdrawal addresses',
                                            iconUrl:
                                                'lib/asset/images/report_icon.png',
                                            iconColor: kPendingButonTextColor,
                                            iconText: 'OFF',
                                            button: MediumSecondaryButtonWidget(
                                                label: 'Change',
                                                onPressed: () {})),
                                        const SizedBox(height: 20),
                                        SecurityCardWidget(
                                            avatarBackgroundColor:
                                                kSecondaryHoverButtonColor,
                                            avatarIconUrl:
                                                'lib/asset/images/email_icon.png',
                                            tile: 'Anti-Phising Code',
                                            subtitle:
                                                'Protect your account from phising attempts and ensure that your notification emails are from Spectrum Alpha only',
                                            iconUrl:
                                                'lib/asset/images/report_icon.png',
                                            iconColor: kPendingButonTextColor,
                                            iconText: 'OFF',
                                            button: MediumSecondaryButtonWidget(
                                                label: 'Change',
                                                onPressed: () {})),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
