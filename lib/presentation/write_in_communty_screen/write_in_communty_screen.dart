import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_nineteen.dart';
import '../../widgets/app_bar/appbar_subtitle_seventeen.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/write_in_communty_controller.dart'; // ignore_for_file: must_be_immutable

class WriteInCommuntyScreen extends GetWidget<WriteInCommuntyController> {
  const WriteInCommuntyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 86.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPostTitleInput(),
              SizedBox(height: 18.v),
              _buildDescriptionInput(),
              Spacer(
                flex: 56,
              ),
              CustomOutlinedButton(
                height: 34.v,
                width: 140.h,
                text: "lbl_forum_post2".tr.toUpperCase(),
                margin: EdgeInsets.only(left: 76.h),
                buttonStyle: CustomButtonStyles.outlineBlueGrayTL161,
                buttonTextStyle:
                    CustomTextStyles.labelLargeOpenSansOnErrorContainerBold,
              ),
              Spacer(
                flex: 43,
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
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
      height: 38.v,
      title: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: Row(
          children: [
            AppbarSubtitleNineteen(
              text: "lbl_cancel".tr,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitleSeventeen(
              text: "lbl_forum_post".tr.toUpperCase(),
              margin: EdgeInsets.only(left: 57.h),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.only(
            top: 7.v,
            right: 29.h,
            bottom: 7.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPostTitleInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_post_title".tr,
            style: CustomTextStyles.labelLargeOpenSans,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            width: 288.h,
            controller: controller.yournamegmailcoController,
            hintText: "msg_matzah_ball_soup".tr,
            hintStyle: CustomTextStyles.bodyMediumGray90011,
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL10,
            filled: true,
            fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_description".tr,
            style: CustomTextStyles.labelLargeOpenSans,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            width: 288.h,
            controller: controller.yournamegmailco1Controller,
            hintText: "msg_people_who_love".tr,
            hintStyle: CustomTextStyles.bodyMediumGray90011,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL10,
            filled: true,
            fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation() {
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
}
