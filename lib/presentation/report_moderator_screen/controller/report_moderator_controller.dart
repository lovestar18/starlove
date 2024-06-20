import '../../../core/app_export.dart';
import '../models/report_moderator_model.dart';

/// A controller class for the ReportModeratorScreen.
///
/// This class manages the state of the ReportModeratorScreen, including the
/// current reportModeratorModelObj
class ReportModeratorController extends GetxController {
  Rx<ReportModeratorModel> reportModeratorModelObj = ReportModeratorModel().obs;
}
