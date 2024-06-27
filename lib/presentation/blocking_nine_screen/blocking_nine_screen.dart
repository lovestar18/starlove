import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/blocking_nine_controller.dart'; // ignore_for_file: must_be_immutable

class BlockingNineScreen extends GetWidget<BlockingNineController> {
  const BlockingNineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 16.v),
              decoration: AppDecoration.mainwhite,
              child: Column(
                children: [
                  CustomAppBar(
                    height: 24.v,
                    leadingWidth: 36.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgUnionGray90003,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                      onTap: () {
                        onTapUnionone();
                      },
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 72.adaptSize,
                            width: 72.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.gray10006,
                              borderRadius: BorderRadius.circular(
                                36.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 14.h),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_jeremy_dough".tr,
                                  style: CustomTextStyles
                                      .headlineSmallOpenSansGray90006,
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "msg_justjeremydough".tr,
                                  style: CustomTextStyles
                                      .bodyLargeOpenSansGray60004,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSlashBlock,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "msg_you_blocked_this".tr,
                            style:
                                CustomTextStyles.titleMediumOpenSansGray90006,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomTextFormField(
                      controller: controller.profilelinkoneController,
                      hintText: "lbl_see_profile".tr,
                      hintStyle:
                          CustomTextStyles.bodyLargeOpenSansBluegray80002,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 22.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserBlueGray8000224x24,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 62.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 18.v,
                        right: 30.h,
                        bottom: 18.v,
                      ),
                      borderDecoration:
                          TextFormFieldStyleHelper.underLineGrayTL8,
                      filled: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomTextFormField(
                      controller: controller.mutenotificatioController,
                      hintText: "msg_mute_notifications".tr,
                      hintStyle:
                          CustomTextStyles.bodyLargeOpenSansBluegray80002,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUserBlueGray80002,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 62.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 14.v,
                        right: 30.h,
                        bottom: 14.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.underLineGray3,
                      filled: false,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomTextFormField(
                      controller: controller.unblockvalueController,
                      hintText: "lbl_unblock".tr,
                      hintStyle:
                          CustomTextStyles.bodyLargeOpenSansBluegray80002,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 22.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSlashblockBlueGray80002,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 62.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 14.v,
                        right: 30.h,
                        bottom: 14.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.underLineGray3,
                      filled: false,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    padding: EdgeInsets.all(16.h),
                    decoration: AppDecoration.fillGray50.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL8,
                    ),
                    width: double.maxFinite,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgWarningSquare,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_report".tr,
                            style:
                                CustomTextStyles.bodyLargeOpenSansBluegray80002,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 250.v)
                ],
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapUnionone() {
    Get.back();
  }
}
