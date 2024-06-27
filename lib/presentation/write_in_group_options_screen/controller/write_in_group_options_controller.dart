import '../../../core/app_export.dart';
import '../models/write_in_group_options_model.dart';

/// A controller class for the WriteInGroupOptionsScreen.
///
/// This class manages the state of the WriteInGroupOptionsScreen, including the
/// current writeInGroupOptionsModelObj
class WriteInGroupOptionsController extends GetxController {
  Rx<WriteInGroupOptionsModel> writeInGroupOptionsModelObj =
      WriteInGroupOptionsModel().obs;
}
