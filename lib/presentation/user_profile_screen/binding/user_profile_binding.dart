import '../../../core/app_export.dart';
import '../controller/user_profile_controller.dart';

/// A binding class for the UserProfileScreen.
///
/// This class ensures that the UserProfileController is created when the
/// UserProfileScreen is first loaded.
class UserProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileController());
  }
}
