import '../../../core/app_export.dart';
import '../models/application_review_model.dart';

/// A controller class for the ApplicationReviewScreen.
///
/// This class manages the state of the ApplicationReviewScreen, including the
/// current applicationReviewModelObj
class ApplicationReviewController extends GetxController {
  Rx<ApplicationReviewModel> applicationReviewModelObj =
      ApplicationReviewModel().obs;
}
