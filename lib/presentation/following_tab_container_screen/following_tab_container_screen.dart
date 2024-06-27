import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/following_tab_container_controller.dart';
import 'models/userprofilelist3_item_model.dart';
import 'widgets/userprofilelist3_item_widget.dart'; // ignore_for_file: must_be_immutable

class FollowingTabContainerScreen
    extends GetWidget<FollowingTabContainerController> {
  const FollowingTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Obx(
          () => ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.followingTabContainerModelObj.value
                .userprofilelist3ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofilelist3ItemModel model = controller
                  .followingTabContainerModelObj
                  .value
                  .userprofilelist3ItemList
                  .value[index];
              return Userprofilelist3ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray900031,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 22.v,
          bottom: 9.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_friends".tr,
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
