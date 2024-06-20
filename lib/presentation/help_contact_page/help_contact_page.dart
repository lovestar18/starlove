import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/help_contact_controller.dart';
import 'models/help_contact_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HelpContactPage extends StatelessWidget {
  HelpContactPage({Key? key})
      : super(
          key: key,
        );

  HelpContactController controller =
      Get.put(HelpContactController(HelpContactModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.cyan40001,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 26.v,
              ),
              child: Column(
                children: [_buildCustomerServiceSection()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar() {
    return CustomTextFormField(
      controller: controller.searchBarController,
      hintText: "lbl_search".tr,
      hintStyle: CustomTextStyles.bodyMediumBluegray90002,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 10.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineCyan,
      fillColor: appTheme.cyan50,
    );
  }

  /// Section Widget
  Widget _buildCustomerServiceSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchBar(),
          SizedBox(height: 80.v),
          Container(
            width: 126.h,
            margin: EdgeInsets.only(left: 110.h),
            child: Column(
              children: [
                Container(
                  height: 92.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 22.h,
                  ),
                  padding: EdgeInsets.only(bottom: 14.v),
                  decoration: AppDecoration.fillCyan.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgProfile,
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl_email_us".tr,
                  style: CustomTextStyles.headlineLargeOpenSansBluegray90002,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
