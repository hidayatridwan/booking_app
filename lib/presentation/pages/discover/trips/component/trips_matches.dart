import 'package:flutter/material.dart';
import 'package:booking_app/config/config.dart';

class TripsMatches extends StatelessWidget {
  const TripsMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_header(), _matchesList(context)],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(left: AppDimen.w16, right: AppDimen.w16),
      child: Text(
        'Other Matches',
        style: AppFont.display3.copyWith(color: AppColor.ink1),
      ),
    );
  }

  Widget _matchesList(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return _matchesItem(context);
      },
      itemCount: 3,
      scrollDirection: Axis.horizontal,
    ));
  }

  Widget _matchesItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: AppDimen.h16, top: AppDimen.h24, bottom: AppDimen.h16),
      padding: EdgeInsets.all(AppDimen.h16),
      width: (MediaQuery.of(context).size.width / 2) - AppDimen.w40,
      decoration: BoxDecoration(
          color: AppColor.ink6,
          borderRadius: BorderRadius.circular(AppDimen.w8)),
      child: Column(
        children: [
          Expanded(child: Image.asset(ImageString.plants)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gary',
                style:
                    AppFont.paragraphLargeBold.copyWith(color: AppColor.ink2),
              ),
              Text(
                'IDR500',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink2),
              )
            ],
          )
        ],
      ),
    );
  }
}
