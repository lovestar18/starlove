import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/edit_group_chat_controller.dart'; // ignore_for_file: must_be_immutable

class EditGroupChatScreen extends GetWidget<EditGroupChatController> {
  const EditGroupChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup8613,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildArrowNavigation(),
              SizedBox(height: 16.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle6028,
                          height: 404.v,
                          width: double.maxFinite,
                          radius: BorderRadius.circular(
                            12.h,
                          ),
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_chat_colors".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        _buildColorSelection(),
                        SizedBox(height: 40.v),
                        Text(
                          "msg_choose_from_your".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 114.v),
                        CustomOutlinedButton(
                          text: "lbl_save_changes2".tr,
                          margin: EdgeInsets.only(left: 8.h),
                        )
                      ],
                    ),
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
  Widget _buildArrowNavigation() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup42732093472x374,
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
              text: "lbl_chat_background".tr,
            ),
          ),
          SizedBox(height: 12.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColorSelection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 8.h),
      child: Row(
        children: [
          Container(
            height: 28.adaptSize,
            width: 28.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.black900,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
              border: Border.all(
                color: appTheme.black900,
                width: 1.h,
              ),
            ),
          ),
          Container(
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
            decoration: BoxDecoration(
              color: appTheme.red400,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
          ),
          Container(
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
            decoration: BoxDecoration(
              color: appTheme.lightGreen300,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
          ),
          Container(
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
            decoration: BoxDecoration(
              color: appTheme.greenA700,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
          ),
          Container(
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
            decoration: BoxDecoration(
              color: appTheme.lightBlue700,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
          ),
          Container(
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
            decoration: BoxDecoration(
              color: appTheme.purpleA400,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
          ),
          Container(
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
            decoration: BoxDecoration(
              color: appTheme.redA700,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
          ),
          OutlineGradientButton(
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
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Container(
                height: 28.adaptSize,
                width: 28.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    14.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      theme.colorScheme.errorContainer,
                      appTheme.cyan400
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
