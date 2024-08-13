import '../../../core/app_export.dart';
import '../models/reporting_post_five_model.dart';

/// A controller class for the ReportingPostFiveScreen.
///
/// This class manages the state of the ReportingPostFiveScreen, including the
/// current reportingPostFiveModelObj
class ReportingPostFiveController extends GetxController {
  Rx<ReportingPostFiveModel> reportingPostFiveModelObj =
      ReportingPostFiveModel().obs;
}
