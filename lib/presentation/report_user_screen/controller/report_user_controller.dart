import '../../../core/app_export.dart';
import '../models/report_user_model.dart';

/// A controller class for the ReportUserScreen.
///
/// This class manages the state of the ReportUserScreen, including the
/// current reportUserModelObj
class ReportUserController extends GetxController {
  Rx<ReportUserModel> reportUserModelObj = ReportUserModel().obs;
}
