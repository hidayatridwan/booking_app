import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return _listItem();
      },
      itemCount: 10,
    ));
  }

  Widget _listItem() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
          left: AppDimen.w16, right: AppDimen.w16, bottom: AppDimen.w16),
      padding: EdgeInsets.all(AppDimen.w16),
      decoration: BoxDecoration(
          color: AppColor.ink6, borderRadius: BorderRadius.circular(16.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Summer Roomies',
                style:
                    AppFont.paragraphMediumBold.copyWith(color: AppColor.ink1),
              ),
              Text(
                'Caribbean',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink2),
              )
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: AppColor.ink1,
                size: 12.0,
              ))
        ],
      ),
    );
  }
}
