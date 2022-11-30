import 'package:bloc/bloc.dart';
import 'package:booking_app/config/router/app_router.dart';
import 'package:get_it/get_it.dart';

import 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeState().init());

  AppRouter get _appRoute => GetIt.I<AppRouter>();

  void handleBtnExplore() {
    _appRoute.push(DiscoverRoute());
  }

  void handleBtnLogin() {
    _appRoute.push(const LoginRoute());
  }
}
