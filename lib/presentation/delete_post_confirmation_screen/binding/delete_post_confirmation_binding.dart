import '../../../core/app_export.dart';
import '../controller/delete_post_confirmation_controller.dart';

/// A binding class for the DeletePostConfirmationScreen.
///
/// This class ensures that the DeletePostConfirmationController is created when the
/// DeletePostConfirmationScreen is first loaded.
class DeletePostConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeletePostConfirmationController());
  }
}
