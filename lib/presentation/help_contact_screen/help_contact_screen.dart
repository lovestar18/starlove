import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_seven.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/help_contact_controller.dart'; // ignore_for_file: must_be_immutable

class HelpContactScreen extends GetWidget<HelpContactController> {
  const HelpContactScreen({Key? key})
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
            horizontal: 28.h,
            vertical: 44.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildFullNameInput(),
              SizedBox(height: 20.v),
              _buildEmailInput(),
              SizedBox(height: 20.v),
              _buildCommentsInput(),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                height: 30.v,
                width: 72.h,
                text: "lbl_submit2".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.fillGrayTL14,
                buttonTextStyle:
                    CustomTextStyles.labelMediumRobotoOnErrorContainer,
                alignment: Alignment.center,
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: _buildBottomNavigation(),
        ),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlack90016x18,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 19.v,
          bottom: 20.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleSeven(
        text: "lbl_contact_us".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_your_full_name".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.fullNameController,
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL10,
            filled: true,
            fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.emailController,
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL10,
            filled: true,
            fillColor: theme.colorScheme.onErrorContainer.withOpacity(1),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentsInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_questions_comments".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: controller.commentController,
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

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  onTapFloatingactionb() {}
}
