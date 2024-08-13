import '../../../core/app_export.dart';
import '../controller/activity1_controller.dart';

/// A binding class for the Activity1Screen.
///
/// This class ensures that the Activity1Controller is created when the
/// Activity1Screen is first loaded.
class Activity1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Activity1Controller());
  }
}
