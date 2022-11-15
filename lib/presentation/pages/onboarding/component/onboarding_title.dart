import 'package:booking_app/config/theme/app_font.dart';
import 'package:booking_app/utils/extension/extension.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:booking_app/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              state.onboardingList[state.currentIndex].title,
              style: AppFont.display3,
              textAlign: TextAlign.center,
            ),
            8.0.height,
            Text(
              state.onboardingList[state.currentIndex].description,
              style: AppFont.paragraphMedium,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
