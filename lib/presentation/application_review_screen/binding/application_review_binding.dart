import '../../../core/app_export.dart';
import '../controller/application_review_controller.dart';

/// A binding class for the ApplicationReviewScreen.
///
/// This class ensures that the ApplicationReviewController is created when the
/// ApplicationReviewScreen is first loaded.
class ApplicationReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplicationReviewController());
  }
}
