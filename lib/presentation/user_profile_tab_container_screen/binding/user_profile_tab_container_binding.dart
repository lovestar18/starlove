import '../../../core/app_export.dart';
import '../controller/user_profile_tab_container_controller.dart';

/// A binding class for the UserProfileTabContainerScreen.
///
/// This class ensures that the UserProfileTabContainerController is created when the
/// UserProfileTabContainerScreen is first loaded.
class UserProfileTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileTabContainerController());
  }
}
