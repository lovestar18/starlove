import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_thirteen.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/reporting_post_eight_controller.dart';
import 'models/questionnaire_item_model.dart';
import 'widgets/questionnaire_item_widget.dart'; // ignore_for_file: must_be_immutable

class ReportingPostEightScreen extends GetWidget<ReportingPostEightController> {
  const ReportingPostEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [_buildReportingSection(), SizedBox(height: 4.v)],
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
        imagePath: ImageConstant.imgArrowLeftGray900031,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: AppbarSubtitleThirteen(
        text: "lbl_report".tr,
        margin: EdgeInsets.only(left: 130.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildReportingBody() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_why_are_you_reporting".tr,
            style: CustomTextStyles.titleLargeOpenSansGray90003,
          ),
          SizedBox(height: 14.v),
          SizedBox(
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
                    .questionnaireItemList.value.length,
                itemBuilder: (context, index) {
                  QuestionnaireItemModel model = controller
                      .reportingPostEightModelObj
                      .value
                      .questionnaireItemList
                      .value[index];
                  return QuestionnaireItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReportingSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [_buildReportingBody()],
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
      buttonTextStyle: CustomTextStyles.titleMediumOpenSansPrimary_1,
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
