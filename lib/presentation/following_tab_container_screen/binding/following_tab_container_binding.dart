import '../../../core/app_export.dart';
import '../controller/following_tab_container_controller.dart';

/// A binding class for the FollowingTabContainerScreen.
///
/// This class ensures that the FollowingTabContainerController is created when the
/// FollowingTabContainerScreen is first loaded.
class FollowingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowingTabContainerController());
  }
}
