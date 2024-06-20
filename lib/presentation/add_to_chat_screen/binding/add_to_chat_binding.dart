import '../../../core/app_export.dart';
import '../controller/add_to_chat_controller.dart';

/// A binding class for the AddToChatScreen.
///
/// This class ensures that the AddToChatController is created when the
/// AddToChatScreen is first loaded.
class AddToChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddToChatController());
  }
}
