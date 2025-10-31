import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:sliqpay/constants/app_strings.dart';
import '../../constants/app_images.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';


class ReferralBottomSheetController extends GetxController {

  var contacts = <Contact>[].obs;
  var isLoading = false.obs;

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

  @override
  void onInit() {
    super.onInit();
    requestContactPermissionAndLoad();
  }


  /// Move to next logical state
  void nextState() {
    if (_stateIndex.value < messages.length - 1) {
      _stateIndex.value++;
    } else {
      _stateIndex.value = 0; // reset or keep last
    }
  }

  Future<void> requestContactPermissionAndLoad() async {
    isLoading.value = true;
    if (await FlutterContacts.requestPermission()) {
      final contacts = await FlutterContacts.getContacts(withProperties: true);
      print(contacts);
      this.contacts.assignAll(contacts);
      isLoading.value = false;
    } else {
      print("Permission denied");
      isLoading.value = false;
    }
  }

  Future<void> sendInvite(String number) async {
    final message = Uri.encodeComponent("Hey! Check out SliqPay – the smart way to pay and earn rewards!");
    final smsUri = Uri.parse('sms:$number?body=$message');

    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    } else {
      print("Could not launch SMS app");
    }
  }

  void shareApp() {
    const appLink = "https://play.google.com/store/apps/details?id=com.sliqpay.app";
    const message = "Hey! Check out SliqPay – the smart way to pay and earn rewards!\n$appLink";
    Share.share(message, subject: "Invite to SliqPay");
  }

}
