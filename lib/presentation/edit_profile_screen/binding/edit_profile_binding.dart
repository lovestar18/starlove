import '../../../core/app_export.dart';
import '../controller/edit_profile_controller.dart';

/// A binding class for the EditProfileScreen.
///
/// This class ensures that the EditProfileController is created when the
/// EditProfileScreen is first loaded.
class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileController());
  }
}
