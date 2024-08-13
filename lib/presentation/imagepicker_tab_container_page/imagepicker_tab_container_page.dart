import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../imagepicker_page/imagepicker_page.dart';
import 'controller/imagepicker_tab_container_controller.dart';
import 'models/imagepicker_tab_container_model.dart';
import 'models/photolist_item_model.dart';
import 'widgets/photolist_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ImagepickerTabContainerPage extends StatelessWidget {
  ImagepickerTabContainerPage({Key? key})
      : super(
          key: key,
        );

  ImagepickerTabContainerController controller = Get.put(
      ImagepickerTabContainerController(ImagepickerTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Container(
          width: 338.h,
          decoration: AppDecoration.mainwhite,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 846.v,
                    decoration: AppDecoration.mainwhite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 846.v,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 764.v,
                                    width: 374.h,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.onPrimary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildPhotoStack(),
                                    SizedBox(height: 2.v),
                                    _buildPhotoRow(),
                                    SizedBox(height: 2.v),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildPhotoList(),
                                          SizedBox(height: 2.v),
                                          _buildPhotoRow1()
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 2.v),
                                    _buildPhotoStack1()
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 848.v,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 12.v,
                                  width: 136.h,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant
                                            .imgPhotospickerPhoto12x136,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
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
                              _buildPhotoPickerTopNavigation(),
                              Container(
                                margin: EdgeInsets.only(top: 100.v),
                                height: 746.v,
                                child: TabBarView(
                                  controller: controller.tabviewController,
                                  children: [
                                    ImagepickerPage(),
                                    ImagepickerPage()
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 680.v,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgGroup7836,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Container(
                                        height: 680.v,
                                        width: 16.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.lightBlue30066,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 680.v,
                                          width: 16.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.lightBlue30066,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: 1.v,
                                          width: 374.h,
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotoStack() {
    return SizedBox(
      height: 12.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 12.v,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          height: 12.v,
                          width: 136.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgCreateFromFrame,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPhoto,
                          height: 12.v,
                          width: 136.h,
                        )
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPhoto12x136,
                  height: 12.v,
                  width: 136.h,
                )
              ],
            ),
          ),
          Container(
            height: 12.v,
            width: 136.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgPhotospickerPhoto,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPhoto1,
                  height: 12.v,
                  width: double.maxFinite,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotoRow() {
    return SizedBox(
      height: 136.v,
      width: double.maxFinite,
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
                                ImageConstant.imgCreateFromFrame136x136,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPhoto136x136,
                          height: 136.adaptSize,
                          width: 136.adaptSize,
                        )
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPhoto2,
                  height: 136.adaptSize,
                  width: 136.adaptSize,
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
                        ImageConstant.imgPhotospickerPhoto136x136,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPhoto3,
                        height: 136.adaptSize,
                        width: double.maxFinite,
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
                          ImageConstant.imgPhotospickerPhoto1,
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

  /// Section Widget
  Widget _buildPhotoList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 2.v,
            );
          },
          itemCount: controller.imagepickerTabContainerModelObj.value
              .photolistItemList.value.length,
          itemBuilder: (context, index) {
            PhotolistItemModel model = controller
                .imagepickerTabContainerModelObj
                .value
                .photolistItemList
                .value[index];
            return PhotolistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotoRow1() {
    return SizedBox(
      height: 136.v,
      width: double.maxFinite,
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
                                ImageConstant.imgCreateFromFrame3,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPhoto13,
                          height: 136.adaptSize,
                          width: 136.adaptSize,
                        )
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPhoto12x136,
                  height: 136.adaptSize,
                  width: 136.adaptSize,
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
                        ImageConstant.imgCreateFromFrame1,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPhoto14,
                        height: 136.adaptSize,
                        width: double.maxFinite,
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
                          ImageConstant.imgPhotospickerPhoto136x136,
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

  /// Section Widget
  Widget _buildPhotoStack1() {
    return SizedBox(
      height: 136.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 52.v,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        height: 52.v,
                        width: 136.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgCreateFromFrame1,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPhoto52x136,
                        height: 52.v,
                        width: 136.h,
                      )
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPhoto15,
                height: 136.adaptSize,
                width: 136.adaptSize,
                alignment: Alignment.center,
              )
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 52.v,
              width: 136.h,
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
                  CustomImageView(
                    imagePath: ImageConstant.imgPhoto16,
                    height: 52.v,
                    width: double.maxFinite,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhotoPickerTopNavigation() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fillGrayDb,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBackgroundSheets,
              height: 22.v,
              width: double.maxFinite,
            ),
            SizedBox(
              width: double.maxFinite,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 238.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "msg_select_up_to_4_items".tr,
                              style:
                                  CustomTextStyles.bodyMediumSFProTextBlack900,
                            ),
                            SizedBox(height: 26.v),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_cancel".tr,
                                    style: CustomTextStyles
                                        .bodyLargeSFProTextLightblueA700,
                                  ),
                                  Container(
                                    height: 32.v,
                                    decoration: BoxDecoration(
                                      color: appTheme.gray6001e,
                                      borderRadius: BorderRadius.circular(
                                        8.h,
                                      ),
                                    ),
                                    child: TabBar(
                                      controller: controller.tabviewController,
                                      labelPadding: EdgeInsets.zero,
                                      labelColor: appTheme.black900,
                                      labelStyle: TextStyle(
                                        fontSize: 13.80000114440918.fSize,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w600,
                                      ),
                                      unselectedLabelColor: appTheme.black900,
                                      unselectedLabelStyle: TextStyle(
                                        fontSize: 13.80000114440918.fSize,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      indicatorPadding: EdgeInsets.all(
                                        2.0.h,
                                      ),
                                      indicator: BoxDecoration(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        borderRadius: BorderRadius.circular(
                                          6.h,
                                        ),
                                        border: Border.all(
                                          color: appTheme.black900
                                              .withOpacity(0.04),
                                          width: 0.53.h,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.black900
                                                .withOpacity(0.04),
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(
                                              0,
                                              3.18,
                                            ),
                                          )
                                        ],
                                      ),
                                      dividerHeight: 0.0,
                                      tabs: [
                                        Tab(
                                          child: Container(
                                            width: 68.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.h,
                                              vertical: 6.v,
                                            ),
                                            child: Text(
                                              "lbl_photos".tr,
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Container(
                                            width: 72.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.h,
                                              vertical: 6.v,
                                            ),
                                            child: Text(
                                              "lbl_albums".tr,
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
