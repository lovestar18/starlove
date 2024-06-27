import '../../../core/app_export.dart';
import '../controller/home_recent_chats_tab_container_controller.dart';

/// A binding class for the HomeRecentChatsTabContainerScreen.
///
/// This class ensures that the HomeRecentChatsTabContainerController is created when the
/// HomeRecentChatsTabContainerScreen is first loaded.
class HomeRecentChatsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRecentChatsTabContainerController());
  }
}
