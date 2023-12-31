import 'bloc/var_fifty_bloc.dart';
import 'models/var_fifty_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/app_bar/appbar_title.dart';
import 'package:yka_v2/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:yka_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_v2/widgets/custom_icon_button.dart';

class VarFiftyScreen extends StatelessWidget {
  const VarFiftyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VarFiftyBloc>(
      create: (context) => VarFiftyBloc(VarFiftyState(
        varFiftyModelObj: VarFiftyModel(),
      ))
        ..add(VarFiftyInitialEvent()),
      child: VarFiftyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VarFiftyBloc, VarFiftyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              height: 813.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage5277,
                      height: 253.v,
                      width: 366.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 147.v),
                    ),
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse3044,
                      height: 215.v,
                      width: 259.h,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  _buildExploreAWorld(context),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3041157x226,
                    height: 157.v,
                    width: 226.h,
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildNineteen(context),
                        SizedBox(height: 111.v),
                        Opacity(
                          opacity: 0.1,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector533,
                            height: 26.v,
                            width: 393.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage5276,
                    height: 268.v,
                    width: 369.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 159.v),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExploreAWorld(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 28.h,
          vertical: 3.v,
        ),
        decoration:
            AppDecoration.gradientSecondaryContainerToSecondaryContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 275.h,
              margin: EdgeInsets.only(right: 62.h),
              decoration: AppDecoration.outlineGray,
              child: Text(
                "msg_explore_a_world".tr,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.displaySmall!.copyWith(
                  height: 1.24,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Container(
              width: 299.h,
              margin: EdgeInsets.only(right: 37.h),
              child: Text(
                "msg_browse_our_vast".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeOnPrimary17.copyWith(
                  height: 1.59,
                ),
              ),
            ),
            SizedBox(height: 37.v),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                right: 9.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 7.v,
                    margin: EdgeInsets.only(
                      top: 28.v,
                      bottom: 37.v,
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        spacing: 6,
                        activeDotColor:
                            theme.colorScheme.onPrimary.withOpacity(1),
                        dotColor: theme.colorScheme.onPrimary.withOpacity(0.6),
                        dotHeight: 7.v,
                        dotWidth: 7.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomIconButton(
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                          padding: EdgeInsets.all(19.h),
                          alignment: Alignment.center,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClock,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 72.adaptSize,
                            width: 72.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                36.h,
                              ),
                              border: Border.all(
                                color: appTheme.red500,
                                width: 3.h,
                                strokeAlign: strokeAlignCenter,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 49.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 290.v,
        width: 348.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Opacity(
              opacity: 0.05,
              child: CustomImageView(
                imagePath: ImageConstant.imgMaskGroup290x348,
                height: 290.v,
                width: 348.h,
                alignment: Alignment.center,
              ),
            ),
            CustomAppBar(
              height: 75.v,
              actions: [
                AppbarTrailingCircleimage(
                  imagePath: ImageConstant.imgRectangle9859,
                  margin: EdgeInsets.only(
                    left: 37.h,
                    top: 4.v,
                    right: 4.h,
                  ),
                ),
                AppbarTitle(
                  text: "lbl_en".tr,
                  margin: EdgeInsets.fromLTRB(8.h, 9.v, 41.h, 4.v),
                ),
              ],
              styleType: Style.bgOutline,
            ),
          ],
        ),
      ),
    );
  }
}
