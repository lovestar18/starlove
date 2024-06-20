import '../../../core/app_export.dart';
import '../models/thank_you_application_model.dart';

/// A controller class for the ThankYouApplicationScreen.
///
/// This class manages the state of the ThankYouApplicationScreen, including the
/// current thankYouApplicationModelObj
class ThankYouApplicationController extends GetxController {
  Rx<ThankYouApplicationModel> thankYouApplicationModelObj =
      ThankYouApplicationModel().obs;
}
