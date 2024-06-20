import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/group_description_controller.dart';
import 'models/group_description_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupDescriptionPage extends StatelessWidget {
  GroupDescriptionPage({Key? key})
      : super(
          key: key,
        );

  GroupDescriptionController controller =
      Get.put(GroupDescriptionController(GroupDescriptionModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.primary.withOpacity(1),
                appTheme.gray10005
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 8.v,
              ),
              child: Column(
                children: [SizedBox(height: 14.v), _buildPeopleColumn()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNextThingColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 6.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10.h),
            child: _buildNoteRow(
              plskeepanote: "msg_the_next_thing_we".tr,
            ),
          ),
          SizedBox(height: 22.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10.h),
            child: _buildNoteRow(
              plskeepanote: "msg_pls_keep_a_note".tr,
            ),
          ),
          SizedBox(height: 22.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10.h),
            child: _buildNoteRow(
              plskeepanote: "msg_the_event_will_be".tr,
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            height: 40.v,
            text: "lbl_see_more".tr,
            margin: EdgeInsets.only(right: 6.h),
            buttonStyle: CustomButtonStyles.fillGrayTL8,
            buttonTextStyle: CustomTextStyles.bodySmallBlue60001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPeopleColumn() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          _buildNextThingColumn(),
          SizedBox(height: 48.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.linear.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 6.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 46.h),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFrameBlueA40001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl_12_peoples".tr,
                              style: CustomTextStyles.bodySmallIndigo90002,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgSearchBlueA40001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.gray20004,
                  ),
                ),
                SizedBox(height: 14.v),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    right: 14.h,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 24.v,
                        );
                      },
                      itemCount: controller.groupDescriptionModelObj.value
                          .userprofileItemList.value.length,
                      itemBuilder: (context, index) {
                        UserprofileItemModel model = controller
                            .groupDescriptionModelObj
                            .value
                            .userprofileItemList
                            .value[index];
                        return UserprofileItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 4.v)
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNoteRow({required String plskeepanote}) {
    return Row(
      children: [
        Expanded(
          child: Text(
            plskeepanote,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBluegray60001.copyWith(
              color: appTheme.blueGray60001,
            ),
          ),
        ),
        SizedBox(width: 26.h),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray60001,
          height: 24.adaptSize,
          width: 24.adaptSize,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 4.v),
        )
      ],
    );
  }
}
