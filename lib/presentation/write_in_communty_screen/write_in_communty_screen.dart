import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/write_in_communty_controller.dart'; // ignore_for_file: must_be_immutable

class WriteInCommuntyScreen extends GetWidget<WriteInCommuntyController> {
  const WriteInCommuntyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: CustomFloatingTextField(
                  controller: controller.posttitlevalueController,
                  labelText: "lbl_post_title2".tr,
                  labelStyle: theme.textTheme.bodyLarge!,
                  hintText: "lbl_post_title2".tr,
                  borderDecoration: FloatingTextFormFieldStyleHelper.custom,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: CustomTextFormField(
                  controller: controller.descriptionvaluController,
                  hintText: "lbl_description".tr,
                  hintStyle: CustomTextStyles.bodySmall12_1,
                  textInputAction: TextInputAction.done,
                  maxLines: 11,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 10.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
                ),
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildPostButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 76.v,
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_forum_post2".tr,
      ),
      styleType: Style.bgGradientnameerrorContainernamecyan400,
    );
  }

  /// Section Widget
  Widget _buildPostButton() {
    return CustomElevatedButton(
      text: "lbl_post".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 18.h,
        bottom: 16.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumInterOnPrimary_1,
    );
  }
}
