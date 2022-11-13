import 'package:booking_app/config/assets/image_string.dart';
import 'package:booking_app/data/model/onboarding/onboarding.dart';

class OnboardingState {
  final List<Onboarding> onboardingList = [
    Onboarding(
        image: ImageString.standing,
        title: 'Find a Roomie!',
        description:
            'We\'ve helped millions across the nation find their perfect match... and you\'re next!'),
    Onboarding(
        image: ImageString.standing1,
        title: 'Your Roommate Finder',
        description:
            'Hey you, looking for a roommate? We\'ve helped millions across the nation find their perfect match... and you\'re next!'),
    Onboarding(
        image: ImageString.standing2,
        title: 'Find Your Match!',
        description:
            'We\'ve helped millions across the nation find their perfect match... and you\'re next!'),
  ];

  int currentIndex = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
