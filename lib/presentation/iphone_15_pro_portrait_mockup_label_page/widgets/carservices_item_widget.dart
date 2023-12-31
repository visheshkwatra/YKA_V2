import '../models/carservices_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class CarservicesItemWidget extends StatelessWidget {
  CarservicesItemWidget(
    this.carservicesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarservicesItemModel carservicesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      decoration: AppDecoration.gradientOnErrorToBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 27.h),
                  child: Text(
                    carservicesItemModelObj.drivingPleasureText!,
                    style: CustomTextStyles.titleSmallDMSansOnPrimary,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  carservicesItemModelObj.precisionCareText!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  height: 25.v,
                  width: 119.h,
                  text: "msg_explore_services".tr,
                  margin: EdgeInsets.only(right: 20.h),
                  buttonStyle: CustomButtonStyles.fillOnPrimary,
                  buttonTextStyle: CustomTextStyles.labelMediumDMSansIndigo800,
                ),
              ],
            ),
          ),
          Container(
            height: 110.v,
            width: 333.h,
            margin: EdgeInsets.only(left: 226.h),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 25.v,
                    width: 196.h,
                    margin: EdgeInsets.only(bottom: 6.v),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 25.v,
                            width: 196.h,
                            decoration: BoxDecoration(
                              color:
                                  theme.colorScheme.onPrimary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(
                                98.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 374.h,
                            margin: EdgeInsets.only(
                              top: 12.v,
                              bottom: 8.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector505,
                                  height: 5.v,
                                  width: 9.h,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector505,
                                  height: 5.v,
                                  width: 9.h,
                                  margin: EdgeInsets.only(right: 64.h),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        carservicesItemModelObj.drivingPleasureText1!,
                        style: CustomTextStyles.titleSmallOnPrimaryBold,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        carservicesItemModelObj.precisionCareText1!,
                        style: CustomTextStyles.bodySmallOpenSans,
                      ),
                      SizedBox(height: 14.v),
                      CustomElevatedButton(
                        height: 25.v,
                        text: "msg_explore_services".tr,
                        margin: EdgeInsets.only(right: 22.h),
                        buttonStyle: CustomButtonStyles.fillOnPrimary,
                        buttonTextStyle:
                            CustomTextStyles.labelMediumDMSansPrimary,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 1.h,
                      vertical: 15.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 9.v,
                          width: 99.h,
                          margin: EdgeInsets.only(
                            top: 68.v,
                            bottom: 1.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.5),
                          ),
                        ),
                        Container(
                          height: 5.v,
                          width: 33.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 72.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.black900.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(
                              16.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
