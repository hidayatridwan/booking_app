import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    final state = cubit.state.onboardingList;

    return Expanded(
        child: PageView.builder(
      itemBuilder: (context, index) => Image.asset(state[index].image),
      itemCount: state.length,
          onPageChanged: cubit.swiping,
    ));
  }
}
