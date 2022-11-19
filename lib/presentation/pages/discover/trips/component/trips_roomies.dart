import 'package:booking_app/config/config.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class TripsRoomies extends StatelessWidget {
  const TripsRoomies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [_header(), _roomiesList()],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimen.w16, top: AppDimen.w60, right: AppDimen.w16),
      child: Row(
        children: [
          Text(
            'Your Roomies',
            style: AppFont.display3.copyWith(color: AppColor.ink1),
          ),
          const Expanded(child: SizedBox()),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColor.ink2,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star, color: AppColor.ink2)),
        ],
      ),
    );
  }

  Widget _roomiesList() {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return _roomiesItem();
      },
      itemCount: 3,
    ));
  }

  Widget _roomiesItem() {
    return Container(
      height: 72.0,
      margin: EdgeInsets.only(
          bottom: AppDimen.w16, left: AppDimen.w16, right: AppDimen.w16),
      padding:
          EdgeInsets.symmetric(horizontal: AppDimen.w8, vertical: AppDimen.h16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.ink6,
          borderRadius: BorderRadius.circular(AppDimen.w8)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(112.0),
            child: Container(
              padding: EdgeInsets.all(AppDimen.w2),
              color: AppColor.ink4,
              child: Image.asset(ImageString.avatar),
            ),
          ),
          8.0.width,
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Courtney Henry',
                style: AppFont.paragraphMediumBold,
              ),
              Text(
                'Viet Nam',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink2),
              )
            ],
          )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: AppColor.ink2,
              ))
        ],
      ),
    );
  }
}
