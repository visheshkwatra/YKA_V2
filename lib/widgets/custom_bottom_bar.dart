import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavFindUs,
      activeIcon: ImageConstant.imgNavFindUs,
      title: "lbl_find_us".tr,
      type: BottomBarEnum.Findus,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavServices,
      activeIcon: ImageConstant.imgNavServices,
      title: "lbl_services".tr,
      type: BottomBarEnum.Services,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  color: appTheme.gray70003,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.gray700,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: SizedBox(
              height: 108.v,
              width: 47.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 108.v,
                        width: 47.h,
                        decoration: BoxDecoration(
                          color: appTheme.red800.withOpacity(0.42),
                          borderRadius: BorderRadius.circular(
                            54.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.h, 4.v, 6.h, 58.v),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            color: appTheme.red800,
                            margin: EdgeInsets.symmetric(horizontal: 8.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 9.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style:
                                  CustomTextStyles.labelLargeRed80002.copyWith(
                                color: appTheme.red80002,
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
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Findus,
  Services,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
