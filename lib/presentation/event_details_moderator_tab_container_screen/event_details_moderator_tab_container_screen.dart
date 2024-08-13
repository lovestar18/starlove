import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../moderator_dashboard_page/moderator_dashboard_page.dart';
import 'controller/event_details_moderator_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class EventDetailsModeratorTabContainerScreen
    extends GetWidget<EventDetailsModeratorTabContainerController> {
  const EventDetailsModeratorTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: 338.h,
          child: Column(
            children: [
              _buildHeaderSection(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgWebaliserTptx170x338,
                              height: 170.v,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_event_name".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "msg_event_description2".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 30.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                            SizedBox(height: 14.v),
                            _buildGroupMembersSection(),
                            SizedBox(height: 12.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                            SizedBox(height: 14.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildTimeDateSection(
                                timedate: "lbl_location".tr,
                                timedateOne: "lbl_location2".tr,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                            SizedBox(height: 14.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildTimeDateSection(
                                timedate: "lbl_time_date".tr,
                                timedateOne: "lbl_time_date2".tr,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            _buildModeratorButtonsSection(),
                            SizedBox(height: 14.v),
                            _buildPostCreationSection(),
                            SizedBox(height: 32.v),
                            _buildTabview()
                          ],
                        ),
                      ),
                      _buildTabContentSection()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup42732093460x374,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 60.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 26.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_event_name".tr,
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgUserBlueGray100,
                margin: EdgeInsets.only(right: 11.h),
              )
            ],
          ),
          SizedBox(height: 22.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupMembersSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_group_members".tr,
                  style: CustomTextStyles.labelLargeInterMedium,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  height: 28.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3884,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3883,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 10.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse388228x28,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 20.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3886,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 30.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3887,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 40.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3888,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 50.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3889,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 60.h),
                      ),
                      Container(
                        width: 28.adaptSize,
                        height: 28.adaptSize,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 70.h),
                        decoration: AppDecoration
                            .gradientErrorContainerToCyan400
                            .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              theme.colorScheme.errorContainer,
                              appTheme.cyan400
                            ],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                          child: Text(
                            "lbl_20".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumInterOnPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.labelMediumBluegray90001.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildModeratorview() {
    return Expanded(
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
        ),
        corners: Corners(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: CustomOutlinedButton(
          height: 40.v,
          text: "lbl_moderator_view".tr,
          buttonStyle: CustomButtonStyles.outline,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEventchat() {
    return Expanded(
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
        ),
        corners: Corners(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: CustomOutlinedButton(
          height: 40.v,
          text: "lbl_event_chat".tr,
          buttonStyle: CustomButtonStyles.outline,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildModeratorButtonsSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          _buildModeratorview(),
          SizedBox(width: 10.h),
          _buildEventchat()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostInputSection() {
    return CustomTextFormField(
      controller: controller.postInputSectionController,
      hintText: "msg_what_s_happening".tr,
      hintStyle: CustomTextStyles.bodyMediumBluegray3000114,
      textInputAction: TextInputAction.done,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(6.h, 4.v, 8.h, 4.v),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgAvatar,
          height: 40.adaptSize,
          width: 40.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 50.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
    );
  }

  /// Section Widget
  Widget _buildPost() {
    return CustomElevatedButton(
      height: 36.v,
      width: 72.h,
      text: "lbl_post".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientErrorContainerToCyanDecoration,
      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_2,
    );
  }

  /// Section Widget
  Widget _buildPostCreationSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPostInputSection(),
          SizedBox(height: 44.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImageBlueGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGifBlueGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 16.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEmojiBlueGray90001,
                    ),
                  ),
                ),
                Spacer(),
                _buildPost()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
      height: 26.v,
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray90001,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: theme.colorScheme.errorContainer,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            child: Text(
              "lbl_public_posts".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_private_posts".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabContentSection() {
    return SizedBox(
      height: 542.v,
      width: double.maxFinite,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [ModeratorDashboardPage(), ModeratorDashboardPage()],
      ),
    );
  }

  /// Common widget
  Widget _buildTimeDateSection({
    required String timedate,
    required String timedateOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          timedate,
          style: CustomTextStyles.labelLargeInterMedium.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
        Text(
          timedateOne,
          style: CustomTextStyles.bodyMediumInter_3.copyWith(
            color: appTheme.blueGray90001,
          ),
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
