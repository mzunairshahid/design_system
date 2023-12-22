import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/button/big_button/complete_big_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/big_button/secondary_big_button_widget.dart';
import 'package:ouditor_design_system/widgets/check_lists/check_list_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/favorite_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/icon_button/primary_icon_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/icon_button/secondary_icon_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/icon_button/tertiary_icon_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/medium_button/primary_medium_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/medium_button/secondary_medium_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/medium_button/tertiary_medium_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/radio_button.dart';
import 'package:ouditor_design_system/widgets/button/small_button/primary_small_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/small_button/secondary_small_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/small_button/tertiary_small_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/social_media_button/copy_link_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/social_media_button/facebook_share_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/social_media_button/tweet_share_buton_widget.dart';
import 'package:ouditor_design_system/widgets/button/text_link_button/medium_normal_underline_widget.dart';
import 'package:ouditor_design_system/widgets/button/text_link_button/medium_normal_widget.dart';
import 'package:ouditor_design_system/widgets/button/text_link_button/small_hover_buton.dart';
import 'package:ouditor_design_system/widgets/button/text_link_button/small_normal_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/toggle_widget.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Button'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 60),
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Button - Big',
                      style: kMediumLargeSemibold,
                    ),
                    const Divider(),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Primary',
                          style: kMediumRegular,
                        ),
                        SizedBox(width: 91),
                        Text(
                          'Secondary',
                          style: kMediumRegular,
                        ),
                        SizedBox(width: 91),
                        Text(
                          'Tertiary',
                          style: kMediumRegular,
                        ),
                      ],
                    ),
                    const SizedBox(height: 34),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // BigPrimaryButtonWidget(
                            //     label: 'Normal', onPressed: () {}),
                            // const SizedBox(height: 10),
                            // BigPrimaryButtonWidget(
                            //     label: 'Hover', onPressed: () {}),
                            // const SizedBox(height: 10),
                            // BigPrimaryButtonWidget(
                            //     label: 'Click', onPressed: () {}),
                            // const SizedBox(height: 10),
                            BigButtonWidget(
                              label: 'Disable',
                              onPressed: () {},
                              normalColor: kPrimaryNormalButonColor,
                              hoverColor: kPrimaryHoverButtonColor,
                              clickColor: kPrimaryClickButtonColor,
                              disableColor: kPrimaryDisableButtonColor,
                              borderColor: kTertiaryDisableBorderColor,
                              isDisabled: true,
                            )
                          ],
                        ),
                        const SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigSecondaryButtonWidget(
                                label: 'Normal', onPressed: () {}),
                            const SizedBox(height: 10),
                            BigSecondaryButtonWidget(
                                label: 'Hover', onPressed: () {}),
                            const SizedBox(height: 10),
                            BigSecondaryButtonWidget(
                                label: 'Click', onPressed: () {}),
                            const SizedBox(height: 10),
                            // BigButtonWidget(
                            //     label: 'Disable',
                            //     onPressed: () {},
                            //     borderColor: kDisabledButtonColor,
                            //     disableColor: kDisabledButtonColor,
                            //     isDisabled: true)
                          ],
                        ),
                        const SizedBox(width: 45),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // CompleteBigButtonidget(
                            //   label: 'Normal',
                            //   onPressed: () {},
                            //   normalColor: kSecondaryNormalButtonColor,
                            //   hoverColor: kSecondaryClickButtonColor,
                            //   clickColor: kSecondaryClickButtonColor,
                            //   borderColor: kTertiaryBorderColor,
                            //   isDisabled: false,
                            // ),
                            SizedBox(height: 10),
                            // CompleteBigButtonidget(
                            //   label: 'Hover',
                            //   onPressed: () {},
                            //   normalColor: kSecondaryNormalButtonColor,
                            //   hoverColor: kSecondaryClickButtonColor,
                            //   clickColor: kSecondaryClickButtonColor,
                            //   borderColor: kTertiaryBorderColor,
                            //   isDisabled: false,
                            // ),
                            SizedBox(height: 10),
                            // CompleteBigButtonidget(
                            //   label: 'Click',
                            //   onPressed: () {},
                            //   normalColor: kSecondaryNormalButtonColor,
                            //   hoverColor: kSecondaryClickButtonColor,
                            //   clickColor: kSecondaryClickButtonColor,
                            //   borderColor: kTertiaryBorderColor,
                            //   isDisabled: false,
                            // ),
                            SizedBox(height: 10),
                            // CompleteBigButtonidget(
                            //     label: 'Disable',
                            //     onPressed: () {},
                            //     borderColor: kTertiaryDisableBorderColor,
                            //     disableColor: kDisabledButtonColor,
                            //     isDisabled: true)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text('Button - Medium', style: kMediumLargeSemibold),
                    const Divider(),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // MediumCompleteButtonWidget(
                            //     label: 'Normal',
                            //     onPressed: () {},
                            //     normalColor: kPrimaryNormalButonColor,
                            //     hoverColor: kPrimaryHoverButtonColor,
                            //     clickColor: kPrimaryClickButtonColor,
                            //     borderColor: kPrimaryNormalButonColor,
                            //     isDisabled: false),
                            const SizedBox(height: 10),
                            MediumPrimaryButtonWidget(
                                label: 'Hover', onPressed: () {}),
                            const SizedBox(height: 10),
                            MediumPrimaryButtonWidget(
                                label: 'Click', onPressed: () {}),
                          ],
                        ),
                        const SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MediumSecondaryButtonWidget(
                                label: 'Normal', onPressed: () {}),
                            const SizedBox(height: 10),
                            MediumSecondaryButtonWidget(
                                label: 'Hover', onPressed: () {}),
                            const SizedBox(height: 10),
                            MediumSecondaryButtonWidget(
                                label: 'Click', onPressed: () {}),
                          ],
                        ),
                        const SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MediumTertiaryButtonWidget(
                                label: 'Normal', onPressed: () {}),
                            const SizedBox(height: 10),
                            MediumTertiaryButtonWidget(
                                label: 'Hover', onPressed: () {}),
                            const SizedBox(height: 10),
                            MediumTertiaryButtonWidget(
                                label: 'Click', onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text('Button - Small', style: kMediumLargeSemibold),
                    const Divider(),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SmallCompleteButtonWidget(
                            //   label: 'Normal',
                            //   onPressed: () {},
                            //   normalColor: kPrimaryNormalButonColor,
                            //   hoverColor: kPrimaryHoverButtonColor,
                            //   clickColor: kPrimaryClickButtonColor,
                            //   borderColor: kPrimaryNormalButonColor,
                            //   isDisabled: false,
                            // ),
                            const SizedBox(height: 10),
                            SmallPrimaryButtonWidget(
                                label: 'Hover', onPressed: () {}),
                            const SizedBox(height: 10),
                            SmallPrimaryButtonWidget(
                                label: 'Click', onPressed: () {}),
                          ],
                        ),
                        const SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallSecondaryButtonWidget(
                                label: 'Normal', onPressed: () {}),
                            const SizedBox(height: 10),
                            SmallSecondaryButtonWidget(
                                label: 'Hover', onPressed: () {}),
                            const SizedBox(height: 10),
                            SmallSecondaryButtonWidget(
                                label: 'Click', onPressed: () {}),
                          ],
                        ),
                        const SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallTertiaryButtonWidget(
                                label: 'Normal', onPressed: () {}),
                            const SizedBox(height: 10),
                            SmallTertiaryButtonWidget(
                                label: 'Hover', onPressed: () {}),
                            const SizedBox(height: 10),
                            SmallTertiaryButtonWidget(
                                label: 'Click', onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      'Button - Text Link',
                      style: kMediumLargeSemibold,
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Column(
                          children: [
                            SmallNormalLinkButtonWidget(
                              onPress: () {},
                              tile: 'Normal Button',
                            ),
                            const SizedBox(height: 10),
                            SmallHoverLinkButtonWidget(
                              onPress: () {},
                              title: 'Hover Button',
                            )
                          ],
                        ),
                        const SizedBox(width: 50),
                        Column(
                          children: [
                            MediumNormalLinkButtonWidget(
                              onPress: () {},
                              title: 'Medium Normal',
                            ),
                            const SizedBox(height: 10),
                            MediumNormalUnderlineLinkButtonWidget(
                              onPress: () {},
                              title: 'Medium Underline',
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      'Button - with icon',
                      style: kMediumLargeSemibold,
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryIconButtonWidget(
                                label: 'Normal', onPressed: () {}),
                            const SizedBox(height: 10),
                            PrimaryIconButtonWidget(
                                label: 'Hover', onPressed: () {}),
                            const SizedBox(height: 10),
                            PrimaryIconButtonWidget(
                                label: 'Click', onPressed: () {}),
                          ],
                        ),
                        const SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SecondaryIconButtonWidget(
                                label: 'Normal', onPressed: () {}),
                            const SizedBox(height: 10),
                            SecondaryIconButtonWidget(
                                label: 'Normal', onPressed: () {}),
                            const SizedBox(height: 10),
                            SecondaryIconButtonWidget(
                                label: 'Normal', onPressed: () {}),
                          ],
                        ),
                        const SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TertiaryIconButtonWidget(
                                label: 'Normal',
                                iconUrl: 'lib/asset/images/chat_white.png',
                                onPressed: () {}),
                            const SizedBox(height: 10),
                            TertiaryIconButtonWidget(
                                label: 'Normal',
                                iconUrl: 'lib/asset/images/chat_white.png',
                                onPressed: () {}),
                            const SizedBox(height: 10),
                            TertiaryIconButtonWidget(
                                label: 'Normal',
                                iconUrl: 'lib/asset/images/chat_white.png',
                                onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Toggle',
                      style: kMediumLargeSemibold,
                    ),
                    const SizedBox(height: 26),
                    const ToggleButtonWidget(isDisabled: false),
                    const SizedBox(height: 4),
                    const ToggleButtonWidget(isDisabled: true),
                    const SizedBox(height: 60),
                    const Text(
                      'Radio Button',
                      style: kMediumLargeSemibold,
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        RadioButtonWidget(isSelected: true),
                        SizedBox(width: 10),
                        RadioButtonWidget(isSelected: false),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      'Checklist Button',
                      style: kMediumLargeSemibold,
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        ChecklistButtonWidget(),
                        SizedBox(width: 10),
                        ChecklistButtonWidget(),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      'Favorite Button',
                      style: kMediumLargeSemibold,
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        FavoriteButtonWidget(),
                        SizedBox(width: 10),
                        FavoriteButtonWidget()
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      'Social Media Share',
                      style: kMediumLargeSemibold,
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        FacebookShareButtonWidget(
                          onPress: () {},
                          title: 'Facebook',
                        ),
                        const SizedBox(width: 10),
                        TweetShareButtonWidget(
                          onPress: () {},
                          title: 'Tweet',
                        ),
                        const SizedBox(width: 10),
                        CopyLinkButtonWidget(
                          onPressed: () {},
                          title: 'Copy Link',
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
