import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/delete_post_confirmation_controller.dart'; // ignore_for_file: must_be_immutable

class DeletePostConfirmationScreen
    extends GetWidget<DeletePostConfirmationController> {
  const DeletePostConfirmationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001.withOpacity(0.5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(
              flex: 45,
            ),
            _buildContentSection(),
            Spacer(
              flex: 54,
            )
          ],
        ),
        bottomNavigationBar: _buildNavigationBar(),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
          onTap: () {
            onTapFloatingactionb();
          },
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
  Widget _buildContentSection() {
    return Container(
      width: 300.h,
      margin: EdgeInsets.only(right: 26.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 24.v),
          Text(
            "lbl_delete_post".tr,
            style: CustomTextStyles.titleMediumOpenSansGray90004SemiBold,
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_you_can_restore".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumGray90004.copyWith(
                height: 1.60,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          CustomOutlinedButton(
            height: 54.v,
            text: "lbl_delete".tr,
            buttonStyle: CustomButtonStyles.outlineGray1,
            buttonTextStyle: CustomTextStyles.titleMediumOpenSansRed30001,
          ),
          CustomOutlinedButton(
            height: 54.v,
            text: "lbl_cancel".tr,
            buttonStyle: CustomButtonStyles.outlineGray1,
            buttonTextStyle: CustomTextStyles.titleMediumOpenSansGray90008,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar() {
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
        return AppRoutes.homepageContainer1Page;
      case BottomBarEnum.Grid:
        return AppRoutes.communityForumsResponseScreen;
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
      case AppRoutes.homepageContainer1Page:
        return HomepageContainer1Page();
      case AppRoutes.communityForumsResponseScreen:
        return CommunityForumsResponseScreen();
      case AppRoutes.communityForumsHomePage:
        return CommunityForumsHomePage();
      default:
        return DefaultWidget();
    }
  }

  onTapFloatingactionb() {}
}
