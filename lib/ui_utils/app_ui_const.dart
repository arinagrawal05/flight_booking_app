// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

enum AppDeviceScreenType { MOBILE, TABLET, DESKTOP }

/*
DT = DeviceType

 */

/// Helper class to manage the Dynamic padding, margin and font size value

class AppUIConst {
  AppUIConst._(); //Disabling instance creation for this class
  //initOnStartUp
  static late MediaQueryData mediaQuery;
  static late AppDeviceScreenType appDeviceScreenType;

  static bool get defaultPortrait => _defaultPortrait();

  static bool get isMobile => appDeviceScreenType == AppDeviceScreenType.MOBILE;

  static bool get isTablet => appDeviceScreenType == AppDeviceScreenType.TABLET;

  static bool get isDesktop =>
      appDeviceScreenType == AppDeviceScreenType.DESKTOP;

  static late double portraitWidth;
  static late double portraitHeight;

  //static const int IMAGE_FRAME_DURATION = 400;
  // ignore: non_constant_identifier_names
  static int IMAGE_FRAME_DURATION = 400;
  static const double QUESTION_IMAGE_RATIO = 1.666666667;

  // Constant Elevation Values
  static const double ELEVATION_MEDIUM = 4;
  static const double ELEVATION_LARGE = 8;

  // Constant BorderRadius Values
  static const double BORDER_RADIUS_LITTLE = 4;
  static const double BORDER_RADIUS_SMALL = 6;
  static const double BORDER_RADIUS_MEDIUM = 8;
  static const double BORDER_RADIUS_MEDIUM_LARGE = 10;
  static const double BORDER_RADIUS_LARGE = 16;
  static const double BORDER_RADIUS_LARGE_SMALL = 20;
  static const double BORDER_RADIUS_LARGE_MEDIUM = 24;
  static const double BORDER_RADIUS_EXTRA_LARGE = 32;

  // Constant Border Values
  static const double BORDER_EXTRA_SMALL = 1;
  static const double BORDER_SMALL = 2;
  static const double BORDER_MEDIUM = 4;
  static const double BORDER_LARGE = 8;

  //Constant Padding Values
  static const double PADDING_0 = 0;
  static const double PADDING_1 = 1;
  static const double PADDING_4 = 4;
  static const double PADDING_6 = 6;

  static const double PADDING_8 = 8;
  static const double PADDING_10 = 10;
  static const double PADDING_12 = 12;
  static const double PADDING_16 = 16;
  static const double PADDING_24 = 24;
  static const double PADDING_28 = 28;
  static const double PADDING_32 = 32;
  static const double PADDING_48 = 48;
  static const double PADDING_64 = 64;
  static const double PADDING_72 = 72;
  static const double PADDING_80 = 80;

  //Diagonal
  static double diagonal = sqrt(
      AppUIConst.screenHeight * AppUIConst.screenHeight +
          AppUIConst.screenWidth * AppUIConst.screenWidth);

  //orientation sensitive
  static Orientation get orientation => mediaQuery.orientation;

  static double get screenWidth => mediaQuery.size.width;

  static double get screenHeight => mediaQuery.size.height;

  static double get devicePixelRatio => mediaQuery.devicePixelRatio;

  static double get blockSizeHorizontal => screenWidth / 100;

  static double get blockSizeVertical => screenHeight / 100;

  static double get safeBlockHorizontal =>
      (screenWidth - _safeAreaHorizontal) / 100;

  static double get safeBlockVertical =>
      (screenHeight - _safeAreaVertical) / 100;

  static double get baseFontSize =>
      _getFontSize(mediaQuery, _safeAreaHorizontal, _safeAreaVertical);

  static double get _safeAreaHorizontal =>
      mediaQuery.padding.left + mediaQuery.padding.right;

  static double get _safeAreaVertical =>
      mediaQuery.padding.top + mediaQuery.padding.bottom;

  // DT   //icon, margin padding,
  static double adjustByDT(double logicalPixels) {
    if (isMobile) return logicalPixels;
    return logicalPixels * 2;
  }

  static void initOnStartUp(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    if (mediaQuery.orientation == Orientation.landscape) {
      portraitWidth = mediaQuery.size.height;
      portraitHeight = mediaQuery.size.width;
    } else {
      portraitWidth = mediaQuery.size.width;
      portraitHeight = mediaQuery.size.height;
    }

    appDeviceScreenType = _calculateDeviceScreenType(portraitWidth);
  }
}

double gridSize = AppUIConst.screenWidth * 0.80;

bool _defaultPortrait() {
  return AppUIConst.isMobile;
}

AppDeviceScreenType _calculateDeviceScreenType(double portraitWidth) {
  if (portraitWidth > 900) {
    return AppDeviceScreenType.DESKTOP;
  }
  if (portraitWidth > 600) {
    return AppDeviceScreenType.TABLET;
  }
  return AppDeviceScreenType.MOBILE;
}

double _getFontSize(
    MediaQueryData mq, double safeAreaHorizontal, double safeAreaVertical) {
  // if (ml.apt(mlTopic.CP)) ml.CP('${mq.orientation}');
  if (mq.orientation == Orientation.portrait) {
    if (mq.size.width > 600.0) {
      return ((mq.size.width / 1.5) - safeAreaHorizontal) / 100;
    }
  } else {
    if (mq.size.height > 850.0) {
      return ((mq.size.height / 1.5) - safeAreaVertical) / 100;
    } else {
      return (mq.size.height - safeAreaVertical) / 100;
    }
  }
  return (mq.size.width - safeAreaHorizontal) / 100;
}
