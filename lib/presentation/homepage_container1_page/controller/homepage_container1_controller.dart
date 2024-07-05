import '../../../core/app_export.dart';
import '../models/homepage_container1_model.dart';

/// A controller class for the HomepageContainer1Page.
///
/// This class manages the state of the HomepageContainer1Page, including the
/// current homepageContainer1ModelObj
class HomepageContainer1Controller extends GetxController {
  HomepageContainer1Controller(this.homepageContainer1ModelObj);

  Rx<HomepageContainer1Model> homepageContainer1ModelObj;
}
