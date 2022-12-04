import 'package:auto_route/auto_route.dart';
import 'package:booking_app/utils/helper/helper.dart';
import '../app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isLogin = PrefHelper.instance.token.isNotEmpty;
    if (isLogin) {
      router.push(const DiscoverRoute());
    } else {
      router.push(const LoginRoute());
    }
  }
}
