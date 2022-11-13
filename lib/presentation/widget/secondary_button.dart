import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {Key? key,
      this.type = PrimaryButtonType.type3,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final PrimaryButtonType type;
  final VoidCallback onPressed;
  final String text;
  final double width;

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
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColor.ink1),
            backgroundColor: AppColor.ink6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.buttonSmall.copyWith(color: AppColor.ink1),
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      height: 32,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColor.ink1),
            backgroundColor: AppColor.ink6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.buttonMedium.copyWith(color: AppColor.ink1),
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      height: 40,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColor.ink1),
            backgroundColor: AppColor.ink6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        child: Text(
          text,
          style: AppFont.buttonLarge.copyWith(color: AppColor.ink1),
        ),
      ),
    );
  }
}

enum PrimaryButtonType { type1, type2, type3 }
