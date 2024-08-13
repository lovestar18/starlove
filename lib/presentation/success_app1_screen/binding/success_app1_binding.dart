import '../../../core/app_export.dart';
import '../controller/success_app1_controller.dart';

/// A binding class for the SuccessApp1Screen.
///
/// This class ensures that the SuccessApp1Controller is created when the
/// SuccessApp1Screen is first loaded.
class SuccessApp1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessApp1Controller());
  }
}
