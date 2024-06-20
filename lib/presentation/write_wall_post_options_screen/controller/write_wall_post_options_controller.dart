import '../../../core/app_export.dart';
import '../models/write_wall_post_options_model.dart';

/// A controller class for the WriteWallPostOptionsScreen.
///
/// This class manages the state of the WriteWallPostOptionsScreen, including the
/// current writeWallPostOptionsModelObj
class WriteWallPostOptionsController extends GetxController {
  Rx<WriteWallPostOptionsModel> writeWallPostOptionsModelObj =
      WriteWallPostOptionsModel().obs;
}
