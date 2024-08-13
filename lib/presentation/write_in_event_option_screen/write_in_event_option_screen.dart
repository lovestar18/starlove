import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/write_in_event_option_controller.dart'; // ignore_for_file: must_be_immutable

class WriteInEventOptionScreen extends GetWidget<WriteInEventOptionController> {
  const WriteInEventOptionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray50,
        body: Column(
          children: [
            _buildArrowNavigationSection(),
            SizedBox(height: 6.v),
            Expanded(
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFormField(
                      controller: controller.whatshappeningController,
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
                    ),
                    Spacer(),
                    Container(
                      width: 32.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.h,
                        vertical: 8.v,
                      ),
                      decoration: AppDecoration.fillSecondaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIconImagePrimary,
                            height: 20.adaptSize,
                            width: double.maxFinite,
                          ),
                          SizedBox(height: 16.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgIconGifPrimary,
                            height: 20.adaptSize,
                            width: double.maxFinite,
                          ),
                          SizedBox(height: 16.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgCameraPrimary,
                            height: 20.adaptSize,
                            width: double.maxFinite,
                          ),
                          SizedBox(height: 16.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgIconAttachmentPrimary,
                            height: 20.adaptSize,
                            width: double.maxFinite,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    _buildMediaOptionsRow()
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: _buildPostButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowNavigationSection() {
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
              text: "lbl_write_to_event".tr,
            ),
          ),
          SizedBox(height: 22.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMediaOptionsRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL16,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconPlus,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.gradientErrorContainerToCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_group_post2".tr,
                    style: CustomTextStyles.bodySmallOnPrimary,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostButton() {
    return CustomOutlinedButton(
      text: "lbl_post".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
        bottom: 14.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
      buttonTextStyle: CustomTextStyles.titleMediumGray200Bold,
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
