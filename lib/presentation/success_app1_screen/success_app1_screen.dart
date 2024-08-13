import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/success_app1_controller.dart'; // ignore_for_file: must_be_immutable

class SuccessApp1Screen extends GetWidget<SuccessApp1Controller> {
  const SuccessApp1Screen({Key? key})
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
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [],
            ),
          ),
          child: Container(
            height: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: double.maxFinite,
                  decoration: AppDecoration.gradientIndigoAToCyan,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 222.v,
                          width: 300.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              150.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.lightBlue4007f.withOpacity(0.6),
                                appTheme.indigo7007f.withOpacity(0.6),
                                appTheme.purpleA7007f.withOpacity(0.6)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 348.v,
                          width: 314.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              174.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.lightBlue4007f,
                                appTheme.indigo7007f,
                                appTheme.purpleA7007f
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 130.v,
                        width: 128.h,
                        margin: EdgeInsets.only(top: 248.v),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup7361,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCheckmarkPrimary,
                              height: 38.v,
                              width: 50.h,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(bottom: 42.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imageNotFound,
                              height: 130.v,
                              width: double.maxFinite,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildStatusBar(),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(left: 32.h),
                        decoration: AppDecoration.fillBlueGray,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowLeftOnerrorcontainer,
                              height: 12.v,
                              width: 6.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 57,
                    ),
                    Text(
                      "lbl_success".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      width: double.maxFinite,
                      child: Text(
                        "msg_thank_you_for_submitting".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallQuicksandGray20005
                            .copyWith(
                          height: 1.71,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 42,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 54.v,
                      margin: EdgeInsets.symmetric(horizontal: 18.h),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appTheme.gray10003,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                          ),
                          visualDensity: const VisualDensity(
                            vertical: -4,
                            horizontal: -4,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.h,
                            vertical: 16.v,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "lbl_close".tr,
                          style: CustomTextStyles.titleMediumQuicksandPrimary,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 24.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 24.h),
        onTap: () {
          onTapArrowleftone();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusBar() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 6.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 6.adaptSize,
            width: 6.adaptSize,
            margin: EdgeInsets.only(right: 68.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "",
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgCellularConnection,
                  height: 12.v,
                  width: 18.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 12.v,
                  width: 16.h,
                  margin: EdgeInsets.only(left: 6.h),
                ),
                Container(
                  width: 26.h,
                  margin: EdgeInsets.only(left: 6.h),
                  decoration: AppDecoration.outlineOnErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 8.v,
                          width: 16.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgCap,
                        height: 4.v,
                        width: 1.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
