import '../../../core/app_export.dart';
import '../models/create_wall_post_model.dart';

/// A controller class for the CreateWallPostScreen.
///
/// This class manages the state of the CreateWallPostScreen, including the
/// current createWallPostModelObj
class CreateWallPostController extends GetxController {
  Rx<CreateWallPostModel> createWallPostModelObj = CreateWallPostModel().obs;
}
