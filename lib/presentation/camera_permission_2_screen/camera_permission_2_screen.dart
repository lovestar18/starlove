import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/camera_permission_2_controller.dart'; // ignore_for_file: must_be_immutable

class CameraPermission2Screen extends GetWidget<CameraPermission2Controller> {
  const CameraPermission2Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                decoration: AppDecoration.greyscaleGrey12,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildAppBar(),
                    ),
                    Spacer(),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 18.h,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              children: [
                                Text(
                                  "msg_share_on_the_app".tr,
                                  style: CustomTextStyles
                                      .titleMediumOpenSansOnErrorContainerSemiBold,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "msg_enable_access_so".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .bodyLargeOpenSansOnErrorContainer
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                                SizedBox(height: 54.v),
                                Text(
                                  "msg_enable_camera_access".tr,
                                  style: CustomTextStyles
                                      .bodyLargeOpenSansBluegray30001,
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "msg_enable_microphone".tr,
                                  style: CustomTextStyles
                                      .bodyLargeOpenSansBluegray30001,
                                ),
                                SizedBox(height: 112.v),
                                Container(
                                  width: 80.h,
                                  padding: EdgeInsets.all(10.h),
                                  decoration: AppDecoration.mainwhite.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder40,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 60.adaptSize,
                                        width: 60.adaptSize,
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onErrorContainer
                                              .withOpacity(1),
                                          borderRadius: BorderRadius.circular(
                                            30.h,
                                          ),
                                          border: Border.all(
                                            color: appTheme.gray90004,
                                            width: 3.h,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 80.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "lbl_post2".tr,
                                      style: CustomTextStyles
                                          .bodyLargeOpenSansOnErrorContainer,
                                    ),
                                    SizedBox(width: 24.h),
                                    Text(
                                      "lbl_story".tr,
                                      style: CustomTextStyles
                                          .titleMediumOpenSansOnErrorContainer,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v)
                  ],
                ),
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 24.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgX,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.only(right: 15.h),
        )
      ],
    );
  }
}
