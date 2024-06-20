import '../../../core/app_export.dart';
import '../models/delete_post_confirmation_model.dart';

/// A controller class for the DeletePostConfirmationDialog.
///
/// This class manages the state of the DeletePostConfirmationDialog, including the
/// current deletePostConfirmationModelObj
class DeletePostConfirmationController extends GetxController {
  Rx<DeletePostConfirmationModel> deletePostConfirmationModelObj =
      DeletePostConfirmationModel().obs;
}
