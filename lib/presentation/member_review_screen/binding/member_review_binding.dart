import '../../../core/app_export.dart';
import '../controller/member_review_controller.dart';

/// A binding class for the MemberReviewScreen.
///
/// This class ensures that the MemberReviewController is created when the
/// MemberReviewScreen is first loaded.
class MemberReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MemberReviewController());
  }
}
