import '../../../core/app_export.dart';
import '../models/sidebar_model.dart';

/// A controller class for the SidebarDraweritem.
///
/// This class manages the state of the SidebarDraweritem, including the
/// current sidebarModelObj
class SidebarController extends GetxController {
  Rx<SidebarModel> sidebarModelObj = SidebarModel().obs;
}
