import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/text_fields/date_picker_text_field_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/description_text_field_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/dropdown_text_field_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/message_send_text_field_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/message_text_field_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/private_public%20_dropdown_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/simple_textfield_widget.dart';
import 'package:ouditor_design_system/widgets/text_fields/title_text_field_widget.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text(
          'Text Form',
          style: kMediumLargeSemibold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 75),
          child: Column(
            children: [
              SimpleTextFieldWidget(
                  hintText: 'Input here ',
                  controller: _controller,
                  keyboardType: TextInputType.number),
              const SizedBox(height: 20),
              DescriptionTextFieldWidget(
                hintText: 'Description',
                controller: _controller,
                keyboardType: TextInputType.multiline,
              ),
              const SizedBox(height: 20),
              const DropdownTextFieldWidget(),
              const SizedBox(height: 20),
              const DatePickerTextField(),
              const SizedBox(height: 20),
              const PrivatePublicDropdownTextfieldWidget(),
              const SizedBox(height: 20),
              MessageInTextFieldWidget(
                  addFiles: () {},
                  hintText: 'Message in',
                  giftEmoji: () {},
                  sticker: () {},
                  emojies: () {}),
              const SizedBox(height: 20),
              TitleTextFieldWidget(
                hintText: 'Ttile',
                controller: _controller,
                keyboardType: TextInputType.text,
                usdAmount: '0.00',
              ),
              const SizedBox(height: 20),
              MessageSendTextfieldWidget(
                  hintText: 'Message wade',
                  onPress: () {},
                  controller: _controller,
                  keyboardType: TextInputType.text)
            ],
          ),
        ),
      ),
    );
  }
}
