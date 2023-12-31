import 'bloc/profile_six_bloc.dart';
import 'models/profile_six_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfileSixDialog extends StatelessWidget {
  const ProfileSixDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSixBloc>(
      create: (context) => ProfileSixBloc(ProfileSixState(
        profileSixModelObj: ProfileSixModel(),
      ))
        ..add(ProfileSixInitialEvent()),
      child: ProfileSixDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      child: Column(
        children: [
          Spacer(),
          _buildProfileSixFrame(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSixFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 39.h),
      decoration: AppDecoration.gradientTealToTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 149.v,
            width: 201.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.v),
                    child: SizedBox(
                      width: 116.h,
                      child: Divider(
                        indent: 61.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1171275236,
                  height: 149.v,
                  width: 201.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 27.v),
          Text(
            "lbl_yka_alert".tr,
            style: CustomTextStyles.headlineSmallOnPrimary,
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 261.h,
            child: Text(
              "msg_we_have_received".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeOnPrimary_1.copyWith(
                height: 1.63,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          CustomElevatedButton(
            height: 56.v,
            width: 176.h,
            text: "lbl_go_to_home".tr,
            rightIcon: Container(
              margin: EdgeInsets.only(left: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightRed8001,
                height: 12.v,
                width: 15.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillOnPrimaryTL14,
            buttonTextStyle: CustomTextStyles.titleMediumRed800,
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
