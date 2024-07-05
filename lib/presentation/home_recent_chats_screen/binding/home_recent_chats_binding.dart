import '../../../core/app_export.dart';
import '../controller/home_recent_chats_controller.dart';

/// A binding class for the HomeRecentChatsScreen.
///
/// This class ensures that the HomeRecentChatsController is created when the
/// HomeRecentChatsScreen is first loaded.
class HomeRecentChatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeRecentChatsController());
  }
}
