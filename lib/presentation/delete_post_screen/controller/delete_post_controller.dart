import '../../../core/app_export.dart';
import '../models/delete_post_model.dart';

/// A controller class for the DeletePostScreen.
///
/// This class manages the state of the DeletePostScreen, including the
/// current deletePostModelObj
class DeletePostController extends GetxController {
  Rx<DeletePostModel> deletePostModelObj = DeletePostModel().obs;
}
