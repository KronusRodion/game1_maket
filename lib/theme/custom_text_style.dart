import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeLightblueA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 16.fSize,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get bodyMediumAmber600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.amber600,
      );
  static get bodySmallffa7a7a7 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFA7A7A7),
      );
  static get bodySmallffffb700 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFFB700),
      );
  // Label text style
  static get labelLargeSFProTextGray600 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.gray600,
        fontSize: 13.fSize,
      );
  static get labelLargeSFProTextGray600_1 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.gray600,
      );
  static get labelMediumLightblueA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightBlueA700,
      );
  // Title text style
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
