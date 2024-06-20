import '../../../core/app_export.dart';
import '../controller/application_controller.dart';

/// A binding class for the ApplicationScreen.
///
/// This class ensures that the ApplicationController is created when the
/// ApplicationScreen is first loaded.
class ApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplicationController());
  }
}
