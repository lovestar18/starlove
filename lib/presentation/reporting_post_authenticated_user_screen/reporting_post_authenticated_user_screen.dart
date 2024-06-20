import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_twelve.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/reporting_post_authenticated_user_controller.dart'; // ignore_for_file: must_be_immutable

class ReportingPostAuthenticatedUserScreen
    extends GetWidget<ReportingPostAuthenticatedUserController> {
  const ReportingPostAuthenticatedUserScreen({Key? key})
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
                    child: _buildAppbarSection(),
                  ),
                  SizedBox(height: 674.v)
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
  PreferredSizeWidget _buildAppbarSection() {
    return CustomAppBar(
      height: 58.v,
      centerTitle: true,
      title: AppbarSubtitleTwelve(
        text: "lbl_feed".tr,
      ),
      styleType: Style.bgOutline,
    );
  }
}
