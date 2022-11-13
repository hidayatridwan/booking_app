import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      this.type = PrimaryButtonType.type1,
      required this.onPressed,
      required this.text})
      : super(key: key);
  final PrimaryButtonType type;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return type == PrimaryButtonType.type1
        ? _type1()
        : type == PrimaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      height: 24,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.buttonSmall.copyWith(color: AppColor.ink6),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      height: 32,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink1,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.buttonMedium.copyWith(color: AppColor.ink6),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      height: 32,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.ink1,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.buttonLarge.copyWith(color: AppColor.ink6),
        ),
      ),
    );
  }
}

enum PrimaryButtonType { type1, type2, type3 }
