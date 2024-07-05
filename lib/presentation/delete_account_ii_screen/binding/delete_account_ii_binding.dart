import '../../../core/app_export.dart';
import '../controller/delete_account_ii_controller.dart';

/// A binding class for the DeleteAccountIiScreen.
///
/// This class ensures that the DeleteAccountIiController is created when the
/// DeleteAccountIiScreen is first loaded.
class DeleteAccountIiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeleteAccountIiController());
  }
}
