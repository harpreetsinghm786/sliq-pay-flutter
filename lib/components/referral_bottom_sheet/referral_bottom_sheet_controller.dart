import 'package:get/get.dart';
import 'package:sliq_pay/constants/app_strings.dart';

import '../../constants/app_images.dart';


class ReferralBottomSheetController extends GetxController {
  final messages = [
      AppStrings.inviteFriendsMessage1,
      AppStrings.inviteFriendsMessage2,
      AppStrings.inviteFriendsMessage3,
      AppStrings.inviteFriendsMessage4
  ];

  final titles = [
    AppStrings.inviteFriendsTitle1,
    AppStrings.inviteFriendsTitle2
  ];

  final banners = [
    AppImages.rewardRoller,
    AppImages.gift,
  ];

  /// Single observable state
  final _stateIndex = 0.obs;

  int get stateIndex => _stateIndex.value;
  String get currentMessage => messages[_stateIndex.value];
  String get currentTitle =>
      _stateIndex.value == messages.length - 1 ? titles[1] : titles[0];
  String get currentBanner =>
      _stateIndex.value == messages.length - 1 ? banners[1] : banners[0];

  /// Move to next logical state
  void nextState() {
    if (_stateIndex.value < messages.length - 1) {
      _stateIndex.value++;
    } else {
      _stateIndex.value = 0; // reset or keep last
    }
  }
}
