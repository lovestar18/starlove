import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/write_in_group_controller.dart'; // ignore_for_file: must_be_immutable

class WriteInGroupScreen extends GetWidget<WriteInGroupController> {
  const WriteInGroupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Column(
          children: [
            _buildArrowLeftSection(),
            Expanded(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 6.v,
                ),
                child: Column(
                  children: [
                    _buildWriteToEventSection(),
                    Spacer(),
                    CustomOutlinedButton(
                      text: "lbl_post".tr,
                      margin: EdgeInsets.only(right: 16.h),
                      buttonTextStyle: CustomTextStyles.titleMediumGray200Bold,
                    ),
                    SizedBox(height: 20.v)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowLeftSection() {
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
              text: "lbl_write_to_group3".tr,
            ),
          ),
          SizedBox(height: 12.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteToEventSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          SizedBox(
            height: 60.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "lbl_write_to_event".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
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
                )
              ],
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
