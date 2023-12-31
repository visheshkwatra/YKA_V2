import '../iphone_15_pro_portrait_mockup_label_page/widgets/carservices_item_widget.dart';
import '../iphone_15_pro_portrait_mockup_label_page/widgets/ninetyeight_item_widget.dart';
import 'bloc/iphone_15_pro_portrait_mockup_label_bloc.dart';
import 'models/carservices_item_model.dart';
import 'models/iphone_15_pro_portrait_mockup_label_model.dart';
import 'models/ninetyeight_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/app_bar/appbar_image.dart';
import 'package:yka_v2/widgets/app_bar/appbar_leading_image.dart';
import 'package:yka_v2/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_v2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:yka_v2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:yka_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';
import 'package:yka_v2/widgets/custom_icon_button.dart';
import 'package:yka_v2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Iphone15ProPortraitMockupLabelPage extends StatelessWidget {
  const Iphone15ProPortraitMockupLabelPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone15ProPortraitMockupLabelBloc>(
      create: (context) => Iphone15ProPortraitMockupLabelBloc(
          Iphone15ProPortraitMockupLabelState(
        iphone15ProPortraitMockupLabelModelObj:
            Iphone15ProPortraitMockupLabelModel(),
      ))
        ..add(Iphone15ProPortraitMockupLabelInitialEvent()),
      child: Iphone15ProPortraitMockupLabelPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              _buildForty(context),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 721.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder30,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildExploreServicesButton(context),
                                SizedBox(height: 22.v),
                                _buildPopularBrands(context),
                                SizedBox(height: 30.v),
                                _buildVehicleAppraisal(context),
                                SizedBox(height: 30.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text(
                                      "lbl_recently_viewed".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray70004,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                _buildFord(context),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 69.v,
                            width: 64.h,
                            margin: EdgeInsets.only(
                              right: 16.h,
                              bottom: 209.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 64.adaptSize,
                                    width: 64.adaptSize,
                                    decoration: BoxDecoration(
                                      color: appTheme.red800,
                                      borderRadius: BorderRadius.circular(
                                        32.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    decoration: BoxDecoration(
                                      color: appTheme.red800,
                                      borderRadius: BorderRadius.circular(
                                        24.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 64.adaptSize,
                                    width: 64.adaptSize,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        32.h,
                                      ),
                                      border: Border.all(
                                        color: appTheme.red500,
                                        width: 3.h,
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment(0, 0),
                                        end: Alignment(1, 1),
                                        colors: [
                                          appTheme.red400,
                                          appTheme.red700,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrame,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 20.v),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForty(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.indigo5002,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Container(
        height: 169.v,
        width: double.maxFinite,
        decoration: AppDecoration.fillIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.indigo50.withOpacity(0),
                    appTheme.indigo50,
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  padding: EdgeInsets.all(19.h),
                  decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 39.v),
                      BlocSelector<
                          Iphone15ProPortraitMockupLabelBloc,
                          Iphone15ProPortraitMockupLabelState,
                          TextEditingController?>(
                        selector: (state) => state.searchController,
                        builder: (context, searchController) {
                          return CustomSearchView(
                            controller: searchController,
                            hintText: "lbl_search".tr,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomAppBar(
              height: 80.v,
              leadingWidth: 69.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgPlay,
                margin: EdgeInsets.only(left: 21.h),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                    right: 2.h,
                    bottom: 2.v,
                  ),
                  strokeWidth: 2.h,
                  gradient: LinearGradient(
                    begin: Alignment(0, -0.05),
                    end: Alignment(0.02, 0.07),
                    colors: [
                      theme.colorScheme.onPrimary.withOpacity(1),
                      theme.colorScheme.onPrimary.withOpacity(0),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                  child: Container(
                    decoration: AppDecoration.gradientRedToRedA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarSubtitle(
                          text: "lbl_hey_ahmed".tr,
                          margin: EdgeInsets.only(right: 36.h),
                        ),
                        SizedBox(height: 1.v),
                        AppbarImage(
                          imagePath: ImageConstant.imgRectangle1674,
                          margin: EdgeInsets.only(right: 92.h),
                        ),
                        AppbarSubtitleOne(
                          text: "msg_60612_riyadh_il".tr,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            right: 18.h,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        AppbarImage(
                          imagePath: ImageConstant.imgVector496,
                          margin: EdgeInsets.only(
                            left: 115.h,
                            right: 10.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                AppbarTrailingIconbutton(
                  imagePath: ImageConstant.imgUser,
                  margin: EdgeInsets.fromLTRB(20.h, 5.v, 20.h, 7.v),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreServicesButton(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<Iphone15ProPortraitMockupLabelBloc,
            Iphone15ProPortraitMockupLabelState>(
          builder: (context, state) {
            return CarouselSlider.builder(
              options: CarouselOptions(
                height: 110.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  state.sliderIndex = index;
                },
              ),
              itemCount: state.iphone15ProPortraitMockupLabelModelObj
                      ?.carservicesItemList.length ??
                  0,
              itemBuilder: (context, index, realIndex) {
                CarservicesItemModel model = state
                        .iphone15ProPortraitMockupLabelModelObj
                        ?.carservicesItemList[index] ??
                    CarservicesItemModel();
                return CarservicesItemWidget(
                  model,
                );
              },
            );
          },
        ),
        SizedBox(height: 16.v),
        Container(
          height: 4.v,
          width: 113.h,
          decoration: BoxDecoration(
            color: appTheme.indigo5002,
            borderRadius: BorderRadius.circular(
              2.h,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              2.h,
            ),
            child: LinearProgressIndicator(
              value: 0.29,
              backgroundColor: appTheme.indigo5002,
              valueColor: AlwaysStoppedAnimation<Color>(
                theme.colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPopularBrands(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            "lbl_popular_brands".tr,
            style: CustomTextStyles.titleSmallGray70004,
          ),
        ),
        SizedBox(height: 11.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 90.v,
            child: BlocSelector<
                Iphone15ProPortraitMockupLabelBloc,
                Iphone15ProPortraitMockupLabelState,
                Iphone15ProPortraitMockupLabelModel?>(
              selector: (state) => state.iphone15ProPortraitMockupLabelModelObj,
              builder: (context, iphone15ProPortraitMockupLabelModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount: iphone15ProPortraitMockupLabelModelObj
                          ?.ninetyeightItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    NinetyeightItemModel model =
                        iphone15ProPortraitMockupLabelModelObj
                                ?.ninetyeightItemList[index] ??
                            NinetyeightItemModel();
                    return NinetyeightItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildVehicleAppraisal(BuildContext context) {
    return SizedBox(
      height: 130.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 95.v,
              width: 311.h,
              margin: EdgeInsets.only(top: 12.v),
              decoration: BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 130.v,
                    width: 161.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(right: 3.h),
                            child: IntrinsicWidth(
                              child: SizedBox(
                                height: 130.v,
                                width: 158.h,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse3038,
                                      height: 220.v,
                                      width: 178.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        height: 134.v,
                                        width: 133.h,
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(
                                            67.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse3037,
                                      height: 162.v,
                                      width: 149.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(vertical: 21.v),
                            child: IntrinsicWidth(
                              child: SizedBox(
                                height: 87.v,
                                width: 161.h,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgVector503,
                                      height: 28.v,
                                      width: 177.h,
                                      alignment: Alignment.bottomLeft,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 86.v,
                                        width: 181.h,
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage74,
                                              height: 86.v,
                                              width: 181.h,
                                              alignment: Alignment.center,
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant.imgClose,
                                              height: 56.v,
                                              width: 94.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                top: 7.v,
                                                right: 33.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 22.v,
                      right: 12.h,
                      bottom: 22.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_want_to_sell_your".tr,
                          style: CustomTextStyles.labelLargeOnPrimaryBold,
                        ),
                        SizedBox(height: 2.v),
                        SizedBox(
                          width: 150.h,
                          child: Text(
                            "msg_fill_a_short_form".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallOpenSansOnPrimary,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        SizedBox(
                          width: 159.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                height: 25.v,
                                width: 103.h,
                                text: "msg_vehicle_appraisal".tr,
                                margin: EdgeInsets.only(top: 2.v),
                                buttonStyle: CustomButtonStyles.fillOnPrimary,
                                buttonTextStyle:
                                    CustomTextStyles.labelMediumDMSansRed800,
                              ),
                              Container(
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(bottom: 13.v),
                                decoration: BoxDecoration(
                                  color: appTheme.blue30033,
                                  borderRadius: BorderRadius.circular(
                                    7.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFord(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: theme.colorScheme.onPrimary.withOpacity(1),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.h,
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Container(
                  height: 225.v,
                  width: 270.h,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: AppDecoration.outline1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Opacity(
                          opacity: 0.04,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 54.v,
                            ),
                            child: Text(
                              "lbl_ford".tr,
                              style: CustomTextStyles.ceraProBlack900,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 35.v,
                          ),
                          child: Text(
                            "msg_ford_bronco_bend".tr,
                            style: CustomTextStyles.titleMediumBold_1,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 18.v,
                          ),
                          child: Text(
                            "lbl_petrol".tr,
                            style:
                                CustomTextStyles.bodySmallOpenSansBluegray50001,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 19.v,
                          right: 20.h,
                        ),
                        child: CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(13.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRightRed800,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage42,
                        height: 139.v,
                        width: 250.h,
                        alignment: Alignment.bottomRight,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(left: 16.h),
                color: theme.colorScheme.onPrimary.withOpacity(1),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.h,
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Container(
                  height: 225.v,
                  width: 270.h,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: AppDecoration.outline1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Opacity(
                          opacity: 0.04,
                          child: Padding(
                            padding: EdgeInsets.only(top: 52.v),
                            child: Text(
                              "lbl_maserati".tr,
                              style: CustomTextStyles.ceraProBlack900,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          margin: EdgeInsets.only(
                            top: 20.v,
                            right: 20.h,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray90019,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 36.v,
                          ),
                          child: Text(
                            "msg_ford_bronco_bend".tr,
                            style: CustomTextStyles.titleMediumBold_1,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 19.v,
                          ),
                          child: Text(
                            "lbl_7653_tnj".tr,
                            style:
                                CustomTextStyles.bodySmallOpenSansBluegray50001,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 19.v,
                          right: 20.h,
                        ),
                        child: CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(13.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRightRed800,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage42,
                        height: 139.v,
                        width: 250.h,
                        alignment: Alignment.bottomRight,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
