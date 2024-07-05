import '../../../core/app_export.dart';
import '../controller/chat_profile_controller.dart';

/// A binding class for the ChatProfileScreen.
///
/// This class ensures that the ChatProfileController is created when the
/// ChatProfileScreen is first loaded.
class ChatProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatProfileController());
  }
}
