import '../../../core/app_export.dart';
import '../models/blocking_ten_model.dart';

/// A controller class for the BlockingTenDialog.
///
/// This class manages the state of the BlockingTenDialog, including the
/// current blockingTenModelObj
class BlockingTenController extends GetxController {
  Rx<BlockingTenModel> blockingTenModelObj = BlockingTenModel().obs;
}
