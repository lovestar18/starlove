import '../../../core/app_export.dart';
import '../models/group_description_model.dart';

/// A controller class for the GroupDescriptionPage.
///
/// This class manages the state of the GroupDescriptionPage, including the
/// current groupDescriptionModelObj
class GroupDescriptionController extends GetxController {
  GroupDescriptionController(this.groupDescriptionModelObj);

  Rx<GroupDescriptionModel> groupDescriptionModelObj;
}
