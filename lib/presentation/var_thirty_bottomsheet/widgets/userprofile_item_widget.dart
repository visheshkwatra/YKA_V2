import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_v2/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.96, -0.74),
          end: Alignment(0.06, 1.81),
          colors: [
            appTheme.red800,
            appTheme.red800.withOpacity(0),
            appTheme.red800,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.v),
                padding: EdgeInsets.all(4.h),
                decoration: AppDecoration.outlineRed.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Container(
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.red800,
                    borderRadius: BorderRadius.circular(
                      6.h,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofileItemModelObj.englishText!,
                      style: CustomTextStyles.titleMediumRed800,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      userprofileItemModelObj.welcomeText!,
                      style: CustomTextStyles.bodyMediumOpenSansBlack900,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: userprofileItemModelObj?.englishImage,
                height: 32.v,
                width: 44.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                margin: EdgeInsets.only(
                  top: 5.v,
                  right: 3.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
