import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/grouppage_v2_controller.dart';
import '../models/slidergroupname_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SlidergroupnameItemWidget extends StatelessWidget {
  SlidergroupnameItemWidget(this.slidergroupnameItemModelObj,
      {Key? key, this.onTapImgLeftArrowImage})
      : super(
          key: key,
        );

  SlidergroupnameItemModel slidergroupnameItemModelObj;

  var controller = Get.find<GrouppageV2Controller>();

  VoidCallback? onTapImgLeftArrowImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168.v,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWebaliserTptx168x342,
            height: 168.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 10.v,
                right: 20.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowLeftBlack90034x34,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    onTap: () {
                      onTapImgLeftArrowImage?.call();
                    },
                  ),
                  SizedBox(height: 64.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_group_name".tr,
                      style: CustomTextStyles.titleLargeRalewayOnErrorContainer,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_about".tr,
                      style: CustomTextStyles.bodySmallRalewayBluegray10002,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
