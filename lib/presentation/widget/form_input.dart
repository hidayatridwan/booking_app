import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  const FormInput({Key? key, this.controller, required this.label})
      : super(key: key);
  final TextEditingController? controller;
  final String label;

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimen.h40,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.label,
            hintStyle: const TextStyle(color: AppColor.ink1),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(color: AppColor.ink3)),
            contentPadding: EdgeInsets.symmetric(horizontal: AppDimen.w16)),
      ),
    );
  }
}
