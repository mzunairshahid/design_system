import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneCountryCodeTextfieldWidget extends StatefulWidget {
  const PhoneCountryCodeTextfieldWidget({super.key});

  @override
  State<PhoneCountryCodeTextfieldWidget> createState() =>
      _PhoneCountryCodeTextfieldWidgetState();
}

class _PhoneCountryCodeTextfieldWidgetState
    extends State<PhoneCountryCodeTextfieldWidget> {
  late PhoneNumber _phoneNumber;

  @override
  void initState() {
    super.initState();
    _phoneNumber = PhoneNumber(isoCode: 'US');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 424,
          height: 51,
          padding: const EdgeInsets.only(top: 7, left: 8, right: 16, bottom: 7),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFFF8F9FD),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFD8E0E7)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFD8E0E8)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            setState(() {
                              _phoneNumber = number;
                            });
                          },
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.DIALOG,
                          ),
                          initialValue: _phoneNumber,
                        ),
                        const SizedBox(width: 8),
                        Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(-1.57),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}
