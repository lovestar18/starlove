import '../../../core/app_export.dart';
import '../controller/friends_tab_container_controller.dart';

/// A binding class for the FriendsTabContainerScreen.
///
/// This class ensures that the FriendsTabContainerController is created when the
/// FriendsTabContainerScreen is first loaded.
class FriendsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FriendsTabContainerController());
  }
}
