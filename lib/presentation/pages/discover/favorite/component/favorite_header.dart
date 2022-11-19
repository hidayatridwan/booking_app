import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimen.w16, top: AppDimen.w60, right: AppDimen.w16),
      child: Row(
        children: [
          Text(
            'Favorites',
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
}
