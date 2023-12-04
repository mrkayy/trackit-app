import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit_app/core/app_export.dart';
import 'package:trackit_app/core/extensions.dart';

// ignore: must_be_immutable
class WelcomesliderItemWidget extends StatelessWidget {
  const WelcomesliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "msg_welcome_to_e_bikes".tr,
          style: CustomTextStyles.headlineSmallGray90003,
        ),
        12.heightSpacing,
        SizedBox(
          width: 291.w,
          child: Text(
            "msg_buying_electric".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumLime800.copyWith(
              height: 1.71,
            ),
          ),
        ),
      ],
    );
  }
}
