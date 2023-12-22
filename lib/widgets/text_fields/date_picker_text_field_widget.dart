import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';

class DatePickerTextField extends StatefulWidget {
  const DatePickerTextField({super.key});

  @override
  State<DatePickerTextField> createState() => _DatePickerTextFieldState();
}

class _DatePickerTextFieldState extends State<DatePickerTextField> {
  String selectedDate = 'Select a date';

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        selectedDate = '${picked.day}/${picked.month}/${picked.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 49,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kTextFieldInsideColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: kTextFieldBorderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(selectedDate, style: kSmallMedium),
          const SizedBox(width: 10),
          IconButton(
            padding: const EdgeInsets.only(bottom: 5),
            icon: const Icon(Icons.calendar_month_outlined),
            onPressed: () => _selectDate(context),
          ),
        ],
      ),
    );
  }
}
