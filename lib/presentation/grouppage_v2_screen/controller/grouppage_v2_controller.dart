import '../../../core/app_export.dart';
import '../models/grouppage_v2_model.dart';

/// A controller class for the GrouppageV2Screen.
///
/// This class manages the state of the GrouppageV2Screen, including the
/// current grouppageV2ModelObj
class GrouppageV2Controller extends GetxController {
  Rx<GrouppageV2Model> grouppageV2ModelObj = GrouppageV2Model().obs;

  Rx<int> sliderIndex = 0.obs;
}
