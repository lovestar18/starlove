import '../../../core/app_export.dart';
import '../models/if_you_are_not_following_private_profile_model.dart';

/// A controller class for the IfYouAreNotFollowingPrivateProfileScreen.
///
/// This class manages the state of the IfYouAreNotFollowingPrivateProfileScreen, including the
/// current ifYouAreNotFollowingPrivateProfileModelObj
class IfYouAreNotFollowingPrivateProfileController extends GetxController {
  Rx<IfYouAreNotFollowingPrivateProfileModel>
      ifYouAreNotFollowingPrivateProfileModelObj =
      IfYouAreNotFollowingPrivateProfileModel().obs;
}
