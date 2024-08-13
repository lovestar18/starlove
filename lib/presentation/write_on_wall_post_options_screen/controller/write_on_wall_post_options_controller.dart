import '../../../core/app_export.dart';
import '../models/write_on_wall_post_options_model.dart';

/// A controller class for the WriteOnWallPostOptionsScreen.
///
/// This class manages the state of the WriteOnWallPostOptionsScreen, including the
/// current writeOnWallPostOptionsModelObj
class WriteOnWallPostOptionsController extends GetxController {
  Rx<WriteOnWallPostOptionsModel> writeOnWallPostOptionsModelObj =
      WriteOnWallPostOptionsModel().obs;
}
