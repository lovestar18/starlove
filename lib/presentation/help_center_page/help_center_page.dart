import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/help_center_controller.dart';
import 'models/help_center_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HelpCenterPage extends StatelessWidget {
  HelpCenterPage({Key? key})
      : super(
          key: key,
        );

  HelpCenterController controller =
      Get.put(HelpCenterController(HelpCenterModel().obs));

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
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Column(
                children: [SizedBox(height: 32.v), _buildSearchFaqColumn()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar() {
    return CustomSearchView(
      controller: controller.searchBarController,
      hintText: "lbl_search".tr,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 10.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFaqList() {
    return SizedBox(
      width: double.maxFinite,
    );
  }

  /// Section Widget
  Widget _buildFaqColumn() {
    return Container(
      width: 352.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        children: [
          _buildFaqList(),
          SizedBox(height: 18.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "msg_can_i_use_the_app".tr,
                    style: CustomTextStyles.bodyMediumPoppinsBluegray90002,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDownArrow,
                  height: 28.v,
                  width: 26.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchFaqColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          _buildSearchBar(),
          SizedBox(height: 42.v),
          _buildFaqColumn()
        ],
      ),
    );
  }
}
