import '../../../core/app_export.dart';
import '../controller/thank_you_application_controller.dart';

/// A binding class for the ThankYouApplicationScreen.
///
/// This class ensures that the ThankYouApplicationController is created when the
/// ThankYouApplicationScreen is first loaded.
class ThankYouApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThankYouApplicationController());
  }
}
