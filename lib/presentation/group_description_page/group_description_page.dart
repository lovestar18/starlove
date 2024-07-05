import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/group_description_controller.dart';
import 'models/group_description_model.dart';
import 'models/userprofilelist4_item_model.dart';
import 'widgets/userprofilelist4_item_widget.dart'; // ignore_for_file: must_be_immutable

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
                theme.colorScheme.onErrorContainer.withOpacity(1),
                appTheme.gray10003
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        _buildMainContentColumn(),
                        SizedBox(height: 48.v),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Column(
                            children: [
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 20.v,
                                ),
                                decoration: AppDecoration.linear.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _buildPeopleCountStack(),
                                    SizedBox(height: 14.v),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(
                                        color: appTheme.gray20005,
                                        indent: 2.h,
                                      ),
                                    ),
                                    SizedBox(height: 14.v),
                                    _buildUserProfileList(),
                                    SizedBox(height: 4.v)
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContentColumn() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 16.h),
            child: _buildVacationNoteRow(
              notificationText: "msg_the_next_thing_we".tr,
            ),
          ),
          SizedBox(height: 22.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 16.h),
            child: _buildVacationNoteRow(
              notificationText: "msg_pls_keep_a_note".tr,
            ),
          ),
          SizedBox(height: 22.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 16.h),
            child: _buildVacationNoteRow(
              notificationText: "msg_the_event_will_be".tr,
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            height: 40.v,
            text: "lbl_see_more".tr,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            buttonStyle: CustomButtonStyles.fillPrimaryContainer,
            buttonTextStyle: CustomTextStyles.bodySmallBlue60001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPeopleCountStack() {
    return Container(
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
                imagePath: ImageConstant.imgSearchBlueA400,
                height: 24.adaptSize,
                width: 24.adaptSize,
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Container(
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
              .userprofilelist4ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofilelist4ItemModel model = controller
                .groupDescriptionModelObj
                .value
                .userprofilelist4ItemList
                .value[index];
            return Userprofilelist4ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildVacationNoteRow({required String notificationText}) {
    return Row(
      children: [
        Expanded(
          child: Text(
            notificationText,
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
