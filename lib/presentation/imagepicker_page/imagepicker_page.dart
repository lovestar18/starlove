import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/imagepicker_controller.dart';
import 'models/imagepicker_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ImagepickerPage extends StatelessWidget {
  ImagepickerPage({Key? key})
      : super(
          key: key,
        );

  ImagepickerController controller =
      Get.put(ImagepickerController(ImagepickerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 100.v),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildRightTitleSection(),
                        SizedBox(height: 526.v),
                        _buildPhotoPickerFooter()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRightTitleSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            right: 18.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "lbl_upload".tr,
                style: CustomTextStyles.titleMediumSFProTextLightblueA700,
              ),
              SizedBox(height: 16.v),
              CustomSearchView(
                controller: controller.searchController,
                hintText: "msg_photos_people".tr,
                hintStyle: CustomTextStyles.bodyLargeSFProTextGray800,
                contentPadding: EdgeInsets.symmetric(vertical: 8.v),
                borderDecoration: SearchViewStyleHelper.fillGrayE,
                fillColor: appTheme.gray6001e,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotoPickerFooter() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(14.h, 18.v, 14.h, 20.v),
      decoration: AppDecoration.outlineGray,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 2.h),
            child: Column(
              children: [
                Text(
                  "msg_show_selected_1".tr,
                  style: CustomTextStyles.titleMediumSFProTextLightblueA700,
                )
              ],
            ),
          ),
          SizedBox(height: 24.v)
        ],
      ),
    );
  }
}
