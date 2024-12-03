import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/listofgroupmembers_controller.dart';
import '../models/mediabody_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MediabodyItemWidget extends StatelessWidget {
  MediabodyItemWidget(this.mediabodyItemModelObj,
      {Key? key, this.onTapMediabody})
      : super(
          key: key,
        );

  MediabodyItemModel mediabodyItemModelObj;

  var controller = Get.find<ListofgroupmembersController>();

  VoidCallback? onTapMediabody;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMediabody?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAvatar60x60,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          SizedBox(width: 10.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  mediabodyItemModelObj.username!.value,
                  style: CustomTextStyles.titleSmallRoboto,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  mediabodyItemModelObj.handle!.value,
                  style: CustomTextStyles.bodySmallRoboto,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
