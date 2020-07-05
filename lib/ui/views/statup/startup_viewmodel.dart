import 'package:my_app/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
class StartupViewModel extends BaseViewModel{
  final NavigationService _navigationService = NavigationService();
  void goToHomePage() async {
    await _navigationService.navigateTo(Routes.homeViewRoute);
  }
}