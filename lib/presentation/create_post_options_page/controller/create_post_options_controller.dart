import '../../../core/app_export.dart';
import '../models/create_post_options_model.dart';

/// A controller class for the CreatePostOptionsPage.
///
/// This class manages the state of the CreatePostOptionsPage, including the
/// current createPostOptionsModelObj
class CreatePostOptionsController extends GetxController {
  CreatePostOptionsController(this.createPostOptionsModelObj);

  Rx<CreatePostOptionsModel> createPostOptionsModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.stickersScreen,
    );
    Get.toNamed(
      AppRoutes.cameraPermissionTwoScreen,
    );
  }
}
