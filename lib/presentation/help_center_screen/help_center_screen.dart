import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/help_center_controller.dart'; // ignore_for_file: must_be_immutable

class HelpCenterScreen extends GetWidget<HelpCenterController> {
  const HelpCenterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              _buildSearchSection(),
              SizedBox(height: 18.v),
              _buildFaqSection(),
              SizedBox(height: 4.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 44.v,
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray10002,
        margin: EdgeInsets.only(left: 27.h),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_help".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.gradientErrorContainerToCyan.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_hi_how_can_we_help".tr,
            style: CustomTextStyles.titleLargeMedium,
          ),
          SizedBox(height: 10.v),
          CustomSearchView(
            controller: controller.searchController,
            hintText: "lbl_search".tr,
            hintStyle: CustomTextStyles.bodyMediumBluegray3000114_1,
            borderDecoration: SearchViewStyleHelper.fillOnPrimary,
            filled: true,
            fillColor: theme.colorScheme.onPrimary.withOpacity(1),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFaqSection() {
    return SizedBox(
      width: double.maxFinite,
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
