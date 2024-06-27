import '../../../core/app_export.dart';
import '../models/delete_post_confirmation_model.dart';

/// A controller class for the DeletePostConfirmationScreen.
///
/// This class manages the state of the DeletePostConfirmationScreen, including the
/// current deletePostConfirmationModelObj
class DeletePostConfirmationController extends GetxController {
  Rx<DeletePostConfirmationModel> deletePostConfirmationModelObj =
      DeletePostConfirmationModel().obs;
}
