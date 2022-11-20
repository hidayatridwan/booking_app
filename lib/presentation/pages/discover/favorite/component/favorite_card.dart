import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 167.0.h,
      margin: EdgeInsets.all(AppDimen.w16),
      padding: EdgeInsets.all(AppDimen.w8),
      decoration: BoxDecoration(
          color: AppColor.ink6,
          borderRadius: BorderRadius.circular(AppDimen.w16)),
      child: Row(
        children: [
          Image.asset(ImageString.plants),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Italy',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink2),
              ),
              Text(
                'Meet new roomies and find new adventures.',
                style: AppFont.heading1.copyWith(color: AppColor.ink1),
              )
            ],
          ))
        ],
      ),
    );
  }
}
