import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {Key? key,
      this.type = SecondaryButtonType.type3,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final SecondaryButtonType type;
  final VoidCallback onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == SecondaryButtonType.type1
        ? _type1()
        : type == SecondaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      height: 24.h,
      width: width.w,
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
      height: 32.h,
      width: width.w,
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
      height: 40.h,
      width: width.w,
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

enum SecondaryButtonType { type1, type2, type3 }
