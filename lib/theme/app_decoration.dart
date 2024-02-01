import 'package:flutter/material.dart';
import 'package:kronuss23_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber600,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray400,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGreen => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.green700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreen70001 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.green70001,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get circleBorder38 => BorderRadius.circular(
        38.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL13 => BorderRadius.vertical(
        top: Radius.circular(13.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
