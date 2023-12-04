import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen_page/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trackit_app/core/app_export.dart';
import 'package:trackit_app/widgets/app_bar/appbar_image.dart';
import 'package:trackit_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:trackit_app/widgets/app_bar/custom_app_bar.dart';
import 'package:trackit_app/widgets/custom_elevated_button.dart';
import 'package:trackit_app/core/extensions.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatefulWidget {
  HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int sliderIndex = 0;
  int itemCount = 5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              12.heightSpacing,
              Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text("msg_hello_good_morning".tr,
                      style: CustomTextStyles.titleMediumBluegray90001)),
              37.heightSpacing,
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: CarouselSlider.builder(
                    options: CarouselOptions(
                        padEnds: false,
                        height: 265.h,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 0.75,
                        enlargeFactor: 0.15,
                        aspectRatio: 16 / 9,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        reverse: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            sliderIndex = index;
                          });
                        }),
                    itemCount: itemCount,
                    itemBuilder: (context, index, realIndex) {
                      return SliderItemWidget();
                    }),
              ),
              30.heightSpacing,
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 6.h,
                  child: AnimatedSmoothIndicator(
                    activeIndex: sliderIndex,
                    count: itemCount,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                        spacing: 7,
                        activeDotColor: theme.colorScheme.onPrimary,
                        dotColor: appTheme.blue50,
                        dotHeight: 6.h,
                        dotWidth: 6.h),
                  ),
                ),
              ),
              25.heightSpacing,
              Container(
                decoration: BoxDecoration(color: appTheme.yellow600),
                height: 109.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 83.w,
                      margin: EdgeInsets.only(
                          top: 10.sp, bottom: 7.sp, left: 32.sp),
                      child: Text(
                        "msg_gotten_your_e_bike".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumLime800
                            .copyWith(height: 1.29),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.trackScreen);
                      },
                      child: Container(
                        width: 183.w,
                        height: 56.h,
                        margin: EdgeInsets.only(right: 32.sp),
                        padding: EdgeInsets.symmetric(horizontal: 29.sp),
                        decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(52.sp)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_your_orders".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumGray800
                                  .copyWith(
                                      height: 1.29, color: appTheme.white),
                            ),
                            // CustomImageView(
                            //   imagePath: ImageConstant.forward,
                            //   width: 16.w,
                            //   // fit: BoxFit.contain,
                            //   onTap: () {},
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.img59085BikersLikeANinja,
                      height: 161.h,
                      width: 161.w,
                      alignment: Alignment.bottomLeft),
                  Container(
                    width: 159.h,
                    margin: EdgeInsets.only(right: 27.h),
                    child: Text(
                      "msg_you_too_can_join".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray800
                          .copyWith(height: 1.29),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
