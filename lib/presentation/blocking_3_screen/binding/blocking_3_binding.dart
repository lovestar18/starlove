import '../../../core/app_export.dart';
import '../controller/blocking_3_controller.dart';

/// A binding class for the Blocking3Screen.
///
/// This class ensures that the Blocking3Controller is created when the
/// Blocking3Screen is first loaded.
class Blocking3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Blocking3Controller());
  }
}
