import '../../../core/app_export.dart';
import '../controller/user_profile1_controller.dart';

/// A binding class for the UserProfile1Screen.
///
/// This class ensures that the UserProfile1Controller is created when the
/// UserProfile1Screen is first loaded.
class UserProfile1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfile1Controller());
  }
}
