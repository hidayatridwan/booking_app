import 'package:booking_app/config/config.dart';
import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/presentation/pages/discover/discover_cubit.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key, required this.cubit}) : super(key: key);
  final DiscoverCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.0.h,
      decoration: BoxDecoration(
          color: AppColor.ink6,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppDimen.w16),
              topRight: Radius.circular(AppDimen.w16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(
              onTap: () => cubit.changeIndex(0),
              icon: Icons.location_on_sharp,
              title: 'Tips',
              isSelected: cubit.state.selectedIndex == 0),
          _buildItem(
              onTap: () => cubit.changeIndex(1),
              icon: Icons.favorite,
              title: 'Profile',
              isSelected: cubit.state.selectedIndex == 1),
          _buildItem(
              onTap: () => cubit.changeIndex(2),
              icon: Icons.settings,
              title: 'Setting',
              isSelected: cubit.state.selectedIndex == 2),
        ],
      ),
    );
  }

  Widget _buildItem(
      {required GestureTapCallback? onTap,
      required IconData icon,
      required String title,
      bool isSelected = false}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? AppColor.ink1 : AppColor.ink3,
          ),
          4.0.height,
          Text(
            title,
            style: AppFont.paragraphMedium
                .copyWith(color: isSelected ? AppColor.ink1 : AppColor.ink3),
          )
        ],
      ),
    );
  }
}
