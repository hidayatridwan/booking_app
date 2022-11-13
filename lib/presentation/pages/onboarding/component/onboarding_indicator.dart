import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding_state.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              state.onboardingList.length,
              (index) => index == state.currentIndex
                  ? _activeIndicator(index)
                  : _inActiveIndicator(index)),
        );
      },
    );
  }

  Widget _activeIndicator(int index) {
    return Container(
      width: 16,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 16.0 : 0),
      decoration: BoxDecoration(
          color: AppColor.accentPink, borderRadius: BorderRadius.circular(4)),
    );
  }

  Widget _inActiveIndicator(int index) {
    return Container(
      width: 6,
      height: 6,
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 16.0 : 0),
      decoration: BoxDecoration(
          color: AppColor.ink3, borderRadius: BorderRadius.circular(4)),
    );
  }
}
