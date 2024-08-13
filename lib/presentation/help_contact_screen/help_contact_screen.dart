import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/help_contact_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HelpContactScreen extends GetWidget<HelpContactController> {
  HelpContactScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 14.v,
              ),
              child: Column(
                children: [
                  _buildFullNameField(),
                  SizedBox(height: 14.v),
                  _buildEmailField(),
                  SizedBox(height: 14.v),
                  _buildCommentsField(),
                  SizedBox(height: 4.v)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSubmitButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 56.v,
      leadingWidth: 54.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowLeftPrimary,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 10.v,
          bottom: 11.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_contact_us".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameField() {
    return CustomFloatingTextField(
      controller: controller.fullNameFieldController,
      labelText: "lbl_your_full_name".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_your_full_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomFloatingTextField(
      controller: controller.emailFieldController,
      labelText: "lbl_email".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "lbl_email".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildCommentsField() {
    return CustomFloatingTextField(
      controller: controller.commentsFieldController,
      labelText: "msg_questions_comments_feedback".tr,
      labelStyle: theme.textTheme.bodyLarge!,
      hintText: "msg_questions_comments_feedback".tr,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.fromLTRB(16.h, 10.v, 16.h, 158.v),
    );
  }

  /// Section Widget
  Widget _buildSubmitButton() {
    return CustomOutlinedButton(
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 20.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
