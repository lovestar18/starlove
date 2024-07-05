import '../../../core/app_export.dart';
import '../controller/followers_tab_container_controller.dart';

/// A binding class for the FollowersTabContainerScreen.
///
/// This class ensures that the FollowersTabContainerController is created when the
/// FollowersTabContainerScreen is first loaded.
class FollowersTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowersTabContainerController());
  }
}
