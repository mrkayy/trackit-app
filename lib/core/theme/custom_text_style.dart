import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumLime800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lime800,
      );
  static get bodySmallLime800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lime800,
      );
  // Headline text style
  static get headlineSmallGray90003 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90003,
      );
  // Title text style
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray9000118 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 18.sp,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.sp,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallLatoOnErrorContainer =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleSmallLime800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lime800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
