import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/stickers_controller.dart'; // ignore_for_file: must_be_immutable

class StickersScreen extends GetWidget<StickersController> {
  const StickersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 30.v,
            right: 16.h,
          ),
          child: Column(
            children: [
              _buildRowBMazelTov(),
              SizedBox(height: 24.v),
              CustomImageView(
                imagePath: ImageConstant.imgFKeepingItKosher,
                height: 94.v,
                width: 174.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 16.h),
              ),
              SizedBox(height: 6.v),
              _buildRowILChaim()
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowBMazelTov() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 16.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBMazelTov,
                  height: 100.v,
                  width: 130.h,
                ),
                SizedBox(height: 54.v),
                CustomImageView(
                  imagePath: ImageConstant.imgDOiYay,
                  height: 146.v,
                  width: 130.h,
                  alignment: Alignment.centerRight,
                )
              ],
            ),
          ),
          SizedBox(width: 26.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 32.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCOiVey,
                      height: 140.v,
                      width: double.maxFinite,
                    ),
                    SizedBox(height: 52.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgEILoveThisALatke,
                      height: 114.v,
                      width: double.maxFinite,
                      alignment: Alignment.centerRight,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowILChaim() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgILChaim,
            height: 164.v,
            width: 150.h,
          ),
          SizedBox(width: 24.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGFoodForThought,
                  height: 108.v,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    right: 4.h,
                  ),
                ),
                SizedBox(height: 34.v),
                CustomImageView(
                  imagePath: ImageConstant.imgULarry,
                  height: 138.v,
                  width: double.maxFinite,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
