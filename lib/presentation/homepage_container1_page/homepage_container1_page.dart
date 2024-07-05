import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_twentythree.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/homepage_container1_controller.dart';
import 'models/featuresgrid_item_model.dart';
import 'models/homepage_container1_model.dart';
import 'widgets/featuresgrid_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomepageContainer1Page extends StatelessWidget {
  HomepageContainer1Page({Key? key})
      : super(
          key: key,
        );

  HomepageContainer1Controller controller =
      Get.put(HomepageContainer1Controller(HomepageContainer1Model().obs));

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
                theme.colorScheme.primary.withOpacity(0.7),
                appTheme.cyan40001
              ],
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 50.v),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 22.v,
            ),
            child: Column(
              children: [
                _buildWelcomeSection(),
                SizedBox(height: 36.v),
                _buildFeaturesGrid(),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                  height: 30.v,
                  width: 176.h,
                  text: "lbl_invite_friends".tr,
                  buttonStyle: CustomButtonStyles.fillOnErrorContainer,
                  buttonTextStyle: CustomTextStyles.titleSmallOpenSans,
                ),
                SizedBox(height: 30.v),
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot20240609,
                  height: 174.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    right: 20.h,
                  ),
                ),
                SizedBox(height: 4.v)
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
              AppbarSubtitleTwentythree(
                text: "lbl_your_profile".tr,
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection() {
    return SizedBox(
      height: 94.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "lbl_shalom_jill".tr,
              style: CustomTextStyles.headlineSmallOpenSansWhiteA70001,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 40.h,
                bottom: 18.v,
              ),
              child: Text(
                "lbl_welcome_to".tr,
                style: CustomTextStyles.titleLargeOpenSansWhiteA70001,
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
    );
  }

  /// Section Widget
  Widget _buildFeaturesGrid() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 14.h,
      ),
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
          itemCount: controller.homepageContainer1ModelObj.value
              .featuresgridItemList.value.length,
          itemBuilder: (context, index) {
            FeaturesgridItemModel model = controller.homepageContainer1ModelObj
                .value.featuresgridItemList.value[index];
            return FeaturesgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
