import '../../../core/app_export.dart';
import '../models/write_wall_post_model.dart';

/// A controller class for the WriteWallPostScreen.
///
/// This class manages the state of the WriteWallPostScreen, including the
/// current writeWallPostModelObj
class WriteWallPostController extends GetxController {
  Rx<WriteWallPostModel> writeWallPostModelObj = WriteWallPostModel().obs;
}
