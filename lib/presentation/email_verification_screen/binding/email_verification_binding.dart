import '../../../core/app_export.dart';
import '../controller/email_verification_controller.dart';

/// A binding class for the EmailVerificationScreen.
///
/// This class ensures that the EmailVerificationController is created when the
/// EmailVerificationScreen is first loaded.
class EmailVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailVerificationController());
  }
}
