import '../../../core/app_export.dart';
import '../controller/user_following_tab_container_controller.dart';

/// A binding class for the UserFollowingTabContainerScreen.
///
/// This class ensures that the UserFollowingTabContainerController is created when the
/// UserFollowingTabContainerScreen is first loaded.
class UserFollowingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserFollowingTabContainerController());
  }
}
