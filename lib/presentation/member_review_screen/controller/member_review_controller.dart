import '../../../core/app_export.dart';
import '../models/member_review_model.dart';

/// A controller class for the MemberReviewScreen.
///
/// This class manages the state of the MemberReviewScreen, including the
/// current memberReviewModelObj
class MemberReviewController extends GetxController {
  Rx<MemberReviewModel> memberReviewModelObj = MemberReviewModel().obs;
}
