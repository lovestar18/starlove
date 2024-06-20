import '../../../core/app_export.dart';
import '../models/reporting_post_authenticated_user_model.dart';

/// A controller class for the ReportingPostAuthenticatedUserScreen.
///
/// This class manages the state of the ReportingPostAuthenticatedUserScreen, including the
/// current reportingPostAuthenticatedUserModelObj
class ReportingPostAuthenticatedUserController extends GetxController {
  Rx<ReportingPostAuthenticatedUserModel>
      reportingPostAuthenticatedUserModelObj =
      ReportingPostAuthenticatedUserModel().obs;
}
