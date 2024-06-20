import '../../../core/app_export.dart';
import '../models/sidebar_model.dart';

/// A controller class for the SidebarScreen.
///
/// This class manages the state of the SidebarScreen, including the
/// current sidebarModelObj
class SidebarController extends GetxController {
  Rx<SidebarModel> sidebarModelObj = SidebarModel().obs;
}
