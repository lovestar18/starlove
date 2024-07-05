import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/daily_notification_sender_controller.dart'; // ignore_for_file: must_be_immutable

class DailyNotificationSenderScreen
    extends GetWidget<DailyNotificationSenderController> {
  const DailyNotificationSenderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 88.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_daily_notification".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 60.v),
              _buildNotificationSenderInput(),
              SizedBox(height: 16.v),
              _buildNotificationSenderInput1(),
              SizedBox(height: 16.v),
              _buildNotificationSenderInput2(),
              SizedBox(height: 46.v),
              CustomElevatedButton(
                height: 34.v,
                width: 110.h,
                text: "lbl_send".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles
                    .gradientOnPrimaryContainerToPurpleDecoration,
              ),
              SizedBox(height: 4.v)
            ],
          ),
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
  Widget _buildNotificationSenderInput() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_notification_from".tr,
            style: CustomTextStyles.labelLargeOpenSans,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.yournamegmailcoController,
            hintText: "lbl_starlove".tr,
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
  Widget _buildNotificationSenderInput1() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_notification_title".tr,
            style: CustomTextStyles.labelLargeOpenSans,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.xoxovalueoneController,
            hintText: "lbl_xoxo".tr,
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
  Widget _buildNotificationSenderInput2() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_notification_test".tr,
            style: CustomTextStyles.labelLargeOpenSans,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.xoxovaluethreeController,
            hintText: "lbl_xoxo2".tr,
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
