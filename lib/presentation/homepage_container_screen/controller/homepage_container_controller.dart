import '../../../core/app_export.dart';
import '../models/homepage_container_model.dart';

/// A controller class for the HomepageContainerScreen.
///
/// This class manages the state of the HomepageContainerScreen, including the
/// current homepageContainerModelObj
class HomepageContainerController extends GetxController {
  Rx<HomepageContainerModel> homepageContainerModelObj =
      HomepageContainerModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.communityForumsResponseOne1Screen,
    );
    Get.toNamed(
      AppRoutes.communityForumsHome1Page,
    );
    Get.toNamed(
      AppRoutes.homepagePage,
    );
  }
}
