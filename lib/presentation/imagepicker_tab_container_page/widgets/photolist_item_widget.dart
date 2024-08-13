import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/imagepicker_tab_container_controller.dart';
import '../models/photolist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PhotolistItemWidget extends StatelessWidget {
  PhotolistItemWidget(this.photolistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  PhotolistItemModel photolistItemModelObj;

  var controller = Get.find<ImagepickerTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.v,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 136.v,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          height: 136.adaptSize,
                          width: 136.adaptSize,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgCreateFromFrame1,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Obx(
                          () => CustomImageView(
                            imagePath: photolistItemModelObj.photoOne!.value,
                            height: 136.adaptSize,
                            width: 136.adaptSize,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: photolistItemModelObj.photoThree!.value,
                    height: 136.adaptSize,
                    width: 136.adaptSize,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 136.v,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 136.adaptSize,
                  width: 136.adaptSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgPhotospickerPhoto2,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: photolistItemModelObj.photoFive!.value,
                          height: 136.adaptSize,
                          width: double.maxFinite,
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 136.adaptSize,
                    width: 136.adaptSize,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgPhotospickerPhoto3,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
