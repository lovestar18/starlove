import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_twelve.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../delete_post_confirmation_dialog/controller/delete_post_confirmation_controller.dart';
import '../delete_post_confirmation_dialog/delete_post_confirmation_dialog.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/report_user_controller.dart'; // ignore_for_file: must_be_immutable

class ReportUserScreen extends GetWidget<ReportUserController> {
  const ReportUserScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 648.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 734.v,
                    width: 374.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(1),
                    ),
                  ),
                  _buildMenuContext()
                ],
              ),
            ),
            SizedBox(height: 10.v)
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
          child: CustomImageView(
            imagePath: ImageConstant.imgFieldNavigation,
            height: 27.0.v,
            width: 30.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 58.v,
      centerTitle: true,
      title: AppbarSubtitleTwelve(
        text: "lbl_feed".tr,
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildBlock() {
    return CustomOutlinedButton(
      height: 56.v,
      text: "lbl_block".tr,
      buttonStyle: CustomButtonStyles.outlineGrayTL16,
      buttonTextStyle: CustomTextStyles.bodyLargeRed300,
      onPressed: () {
        onTapBlock();
      },
    );
  }

  /// Section Widget
  Widget _buildReport() {
    return CustomOutlinedButton(
      height: 58.v,
      text: "lbl_report".tr,
      buttonStyle: CustomButtonStyles.outlineGray1,
      buttonTextStyle: CustomTextStyles.bodyLargePoppinsOnErrorContainer,
      onPressed: () {
        onTapReport();
      },
    );
  }

  /// Section Widget
  Widget _buildShare() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_share".tr,
      buttonStyle: CustomButtonStyles.fillGrayBL16,
      buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildCancel() {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_cancel".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL16,
      buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildMenuContext() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 244.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildBlock(),
          _buildReport(),
          _buildShare(),
          SizedBox(height: 16.v),
          _buildCancel(),
          SizedBox(height: 78.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Grid:
        return AppRoutes.communityForumsResponsePage;
      case BottomBarEnum.Iconlylightnotification:
        return "/";
      case BottomBarEnum.Iconlylightprofile:
        return AppRoutes.communityForumsHomePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.communityForumsResponsePage:
        return CommunityForumsResponsePage();
      case AppRoutes.communityForumsHomePage:
        return CommunityForumsHomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Displays a dialog with the [DeletePostConfirmationDialog] content.
  onTapBlock() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: DeletePostConfirmationDialog(
        Get.put(
          DeletePostConfirmationController(),
        ),
      ),
    ));
  }

  /// Navigates to the reportingPost3Screen when the action is triggered.
  onTapReport() {
    Get.toNamed(
      AppRoutes.reportingPost3Screen,
    );
  }
}
