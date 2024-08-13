import '../../../core/app_export.dart';
import '../controller/discover1_controller.dart';

/// A binding class for the Discover1Screen.
///
/// This class ensures that the Discover1Controller is created when the
/// Discover1Screen is first loaded.
class Discover1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Discover1Controller());
  }
}
