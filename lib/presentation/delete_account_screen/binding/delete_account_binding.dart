import '../../../core/app_export.dart';
import '../controller/delete_account_controller.dart';

/// A binding class for the DeleteAccountScreen.
///
/// This class ensures that the DeleteAccountController is created when the
/// DeleteAccountScreen is first loaded.
class DeleteAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeleteAccountController());
  }
}
