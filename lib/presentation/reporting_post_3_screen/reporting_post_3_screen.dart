import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_eleven.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/reporting_post_3_controller.dart';
import 'models/listwhyareyou_item_model.dart';
import 'widgets/listwhyareyou_item_widget.dart'; // ignore_for_file: must_be_immutable

class ReportingPost3Screen extends GetWidget<ReportingPost3Controller> {
  const ReportingPost3Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              decoration: AppDecoration.white,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildAppBar(),
                  ),
                  SizedBox(height: 16.v),
                  _buildReportForm(),
                  SizedBox(height: 16.v)
                ],
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray90003,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: AppbarSubtitleEleven(
        text: "lbl_report".tr,
        margin: EdgeInsets.only(left: 130.h),
      ),
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildReportContent() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 14.v,
                  );
                },
                itemCount: controller.reportingPost3ModelObj.value
                    .listwhyareyouItemList.value.length,
                itemBuilder: (context, index) {
                  ListwhyareyouItemModel model = controller
                      .reportingPost3ModelObj
                      .value
                      .listwhyareyouItemList
                      .value[index];
                  return ListwhyareyouItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 28.v),
          CustomElevatedButton(
            height: 50.v,
            text: "lbl_submit".tr,
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.titleMediumOpenSansPrimaryBold,
            onPressed: () {
              onTapSubmit();
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReportForm() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [_buildReportContent()],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the reportingPost5Screen when the action is triggered.
  onTapSubmit() {
    Get.toNamed(
      AppRoutes.reportingPost5Screen,
    );
  }
}
