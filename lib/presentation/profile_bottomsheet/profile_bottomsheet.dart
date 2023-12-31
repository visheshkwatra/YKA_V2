import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';
import 'package:yka_v2/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileBottomsheet extends StatelessWidget {
  const ProfileBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfileBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration.gradientGrayToTeal.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 174.v),
            Text(
              "lbl_are_you_sure".tr,
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 4.v),
            Container(
              width: 290.h,
              margin: EdgeInsets.only(
                left: 31.h,
                right: 33.h,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_this_will_result2".tr,
                      style: CustomTextStyles.bodyLargeGray70002,
                    ),
                    TextSpan(
                      text: "msg_would_you_like_to".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 22.v),
            _buildEditDetailsRow(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditDetailsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_edit_details".tr,
              margin: EdgeInsets.only(right: 6.h),
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              height: 60.v,
              text: "lbl_confirm".tr,
              margin: EdgeInsets.only(left: 6.h),
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
