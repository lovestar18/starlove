import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../create_post_options_page/create_post_options_page.dart';
import 'controller/create_post_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class CreatePostTabContainerScreen
    extends GetWidget<CreatePostTabContainerController> {
  const CreatePostTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: 338.h,
          child: Column(
            children: [
              _buildHeaderSection(),
              SizedBox(height: 6.v),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  padding: EdgeInsets.symmetric(vertical: 10.v),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: CustomTextFormField(
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
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineGrayTL8,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 32.h,
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 8.v,
                        ),
                        decoration:
                            AppDecoration.fillSecondaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
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
                      _buildActionRow()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildContentPager(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup427320934,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 62.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 28.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_create_post".tr,
            ),
          ),
          SizedBox(height: 18.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL16,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconClose,
            ),
          ),
          Container(
            height: 44.v,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              borderRadius: BorderRadius.circular(
                22.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.gray50001.withOpacity(0.2),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    -1,
                  ),
                )
              ],
            ),
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.onPrimary.withOpacity(1),
              labelStyle: TextStyle(
                fontSize: 13.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: theme.colorScheme.primary,
              unselectedLabelStyle: TextStyle(
                fontSize: 13.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
              ),
              indicatorPadding: EdgeInsets.all(
                8.0.h,
              ),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  14.h,
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
                ),
              ),
              dividerHeight: 0.0,
              tabs: [
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 6.v,
                    ),
                    child: Text(
                      "lbl_post".tr,
                    ),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 6.v,
                    ),
                    child: Text(
                      "lbl_story2".tr,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContentPager() {
    return Container(
      margin: EdgeInsets.only(
        left: 22.h,
        right: 14.h,
        bottom: 26.v,
      ),
      height: 92.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [CreatePostOptionsPage(), CreatePostOptionsPage()],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
