import '../../../core/app_export.dart';
import '../models/sending_love_confirmation_model.dart';

/// A controller class for the SendingLoveConfirmationBottomsheet.
///
/// This class manages the state of the SendingLoveConfirmationBottomsheet, including the
/// current sendingLoveConfirmationModelObj
class SendingLoveConfirmationController extends GetxController {
  Rx<SendingLoveConfirmationModel> sendingLoveConfirmationModelObj =
      SendingLoveConfirmationModel().obs;
}
