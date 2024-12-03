import '../../../core/app_export.dart';
import '../controller/new_chat_controller.dart';

/// A binding class for the NewChatScreen.
///
/// This class ensures that the NewChatController is created when the
/// NewChatScreen is first loaded.
class NewChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewChatController());
  }
}
