import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_twentyone.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/homepage_controller.dart';
import 'models/column_item_model.dart';
import 'models/homepage_model.dart';
import 'widgets/column_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key})
      : super(
          key: key,
        );

  HomepageController controller =
      Get.put(HomepageController(HomepageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.only(top: 50.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.indigoA70001.withOpacity(0.7),
                appTheme.cyan40001
              ],
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 50.v),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 22.v,
            ),
            child: Column(
              children: [_buildMainContent(), SizedBox(height: 20.v)],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.v,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 9.h),
          child: Column(
            children: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgGraphic,
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 14.h,
                ),
              ),
              AppbarSubtitleTwentyone(
                text: "lbl_your_profile".tr,
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildMainContent() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14.h),
            child: Column(
              children: [
                SizedBox(
                  height: 94.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "lbl_shalom_jill".tr,
                          style:
                              CustomTextStyles.headlineSmallOpenSansWhiteA700,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            bottom: 18.v,
                          ),
                          child: Text(
                            "lbl_welcome_to".tr,
                            style: CustomTextStyles.titleLargeOpenSansWhiteA700,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStarlove2Transparent01,
                        height: 64.v,
                        width: 200.h,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 36.v),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 14.h),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 75.v,
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.h,
                        crossAxisSpacing: 10.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller
                          .homepageModelObj.value.columnItemList.value.length,
                      itemBuilder: (context, index) {
                        ColumnItemModel model = controller
                            .homepageModelObj.value.columnItemList.value[index];
                        return ColumnItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                  height: 30.v,
                  text: "lbl_invite_friends".tr,
                  margin: EdgeInsets.only(
                    left: 74.h,
                    right: 88.h,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallOpenSans,
                ),
                SizedBox(height: 30.v),
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot20240609,
                  height: 174.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    right: 20.h,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
