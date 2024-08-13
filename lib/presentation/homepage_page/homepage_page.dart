import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/homepage_controller.dart';
import 'models/featuresgrid_item_model.dart';
import 'models/homepage_model.dart';
import 'widgets/featuresgrid_item_widget.dart'; // ignore_for_file: must_be_immutable

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
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          height: 660.v,
          decoration: AppDecoration.gradientErrorContainerToCyan,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse48,
                height: 176.v,
                width: 300.h,
                alignment: Alignment.topLeft,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse49,
                height: 302.v,
                width: double.maxFinite,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 60.h),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_shalom".tr,
                              style: CustomTextStyles.headlineSmallGray200,
                            ),
                            TextSpan(
                              text: "lbl_firstname".tr,
                              style:
                                  CustomTextStyles.headlineSmallGray200Regular,
                            ),
                            TextSpan(
                              text: "lbl3".tr,
                              style: CustomTextStyles.headlineSmallGray200,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    _buildWelcomeSection(),
                    SizedBox(height: 22.v),
                    _buildFeaturesGrid()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 72.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLucideMenu,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 22.v,
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgStarlove2Transparent01,
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgGraphic36x38,
          margin: EdgeInsets.only(
            top: 18.v,
            right: 19.h,
            bottom: 18.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection() {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.gradientBlueToBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: 60.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup427320885,
                          height: 60.v,
                          width: 130.h,
                          radius: BorderRadius.circular(
                            6.h,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup427320886,
                          height: 60.v,
                          width: 122.h,
                          radius: BorderRadius.circular(
                            6.h,
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text(
                          "msg_celebrate_jewish".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeInterOnPrimary
                              .copyWith(
                            height: 1.83,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeaturesGrid() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 135.v,
            crossAxisCount: 2,
            mainAxisSpacing: 18.h,
            crossAxisSpacing: 18.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .homepageModelObj.value.featuresgridItemList.value.length,
          itemBuilder: (context, index) {
            FeaturesgridItemModel model = controller
                .homepageModelObj.value.featuresgridItemList.value[index];
            return FeaturesgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
