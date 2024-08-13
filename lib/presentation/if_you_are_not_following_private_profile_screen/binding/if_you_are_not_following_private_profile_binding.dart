import '../../../core/app_export.dart';
import '../controller/if_you_are_not_following_private_profile_controller.dart';

/// A binding class for the IfYouAreNotFollowingPrivateProfileScreen.
///
/// This class ensures that the IfYouAreNotFollowingPrivateProfileController is created when the
/// IfYouAreNotFollowingPrivateProfileScreen is first loaded.
class IfYouAreNotFollowingPrivateProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IfYouAreNotFollowingPrivateProfileController());
  }
}
