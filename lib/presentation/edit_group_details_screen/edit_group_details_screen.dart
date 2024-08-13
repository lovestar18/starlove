import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/edit_group_details_controller.dart'; // ignore_for_file: must_be_immutable

class EditGroupDetailsScreen extends GetWidget<EditGroupDetailsController> {
  const EditGroupDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Column(
          children: [
            _buildHeaderSection(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 16.v,
              ),
              child: Column(
                children: [
                  _buildMemberInfoSection(),
                  SizedBox(height: 24.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgWebaliserTptx1,
                    height: 170.v,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 8.h),
                  ),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_group_name3".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_group_description".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      indent: 8.h,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildGroupMembersSection(),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      indent: 8.h,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildGroupModeratorsSection(),
                  SizedBox(height: 4.v)
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _buildEditDetailsButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup4273209341,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 63.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 29.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_moderator_page".tr,
            ),
          ),
          SizedBox(height: 12.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMemberInfoSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          SizedBox(width: 4.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_member_name".tr,
                  style: CustomTextStyles.labelLargeMedium_1,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_username2".tr,
                  style: theme.textTheme.bodySmall,
                )
              ],
            ),
          ),
          SizedBox(width: 4.h),
          CustomElevatedButton(
            height: 22.v,
            width: 66.h,
            text: "lbl_moderator".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientErrorContainerToCyanDecoration,
            buttonTextStyle: CustomTextStyles.bodySmallOnPrimary,
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupMembersSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_group_members".tr,
                    style: CustomTextStyles.labelLargeMedium_1,
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
                              style: CustomTextStyles.labelMediumOnPrimary,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
  Widget _buildGroupModeratorsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_group_moderators".tr,
                  style: CustomTextStyles.labelLargeMedium_1,
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
  Widget _buildEditDetailsButton() {
    return CustomOutlinedButton(
      text: "lbl_edit_details".tr,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 14.h,
        bottom: 10.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL103,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
