import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_fourteen.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/reporting_post_eight_controller.dart';
import 'models/questionnairelist_item_model.dart';
import 'widgets/questionnairelist_item_widget.dart'; // ignore_for_file: must_be_immutable

class ReportingPostEightScreen extends GetWidget<ReportingPostEightController> {
  const ReportingPostEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_why_are_you_reporting".tr,
                      style: CustomTextStyles.titleLargeOpenSansGray90004,
                    ),
                    SizedBox(height: 14.v),
                    _buildQuestionnaireList()
                  ],
                ),
              ),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildSubmitButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray90004,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: AppbarSubtitleFourteen(
        text: "lbl_report".tr,
        margin: EdgeInsets.only(left: 130.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildQuestionnaireList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: controller.reportingPostEightModelObj.value
              .questionnairelistItemList.value.length,
          itemBuilder: (context, index) {
            QuestionnairelistItemModel model = controller
                .reportingPostEightModelObj
                .value
                .questionnairelistItemList
                .value[index];
            return QuestionnairelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButton() {
    return CustomElevatedButton(
      height: 50.v,
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 50.v,
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.titleMediumOpenSansOnErrorContainer_1,
      onPressed: () {
        onTapSubmitButton();
      },
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the reportingPost5Screen when the action is triggered.
  onTapSubmitButton() {
    Get.toNamed(
      AppRoutes.reportingPost5Screen,
    );
  }
}
