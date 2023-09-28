import 'app_ui_const.dart';

class AppSizing {
  AppSizing._(); //Disabling instance creation for this class

  // static double sizeOnHeight(double heightPart) {
  //   return (AppUIConst.screenHeight * (heightPart / 720));
  // }

  static double sizeOnHeight812(double heightPart) {
    return (AppUIConst.screenHeight * (heightPart / 812));
  }

  // static double sizeOnWidth(double widthPart) {
  //   //TODO: TO discuss figma artboard size
  //   return (AppUIConst.screenWidth * (widthPart / 360));
  // }

  static double sizeOnWidth375(double widthPart) {
    //TODO: TO discuss figma artboard size
    return (AppUIConst.screenWidth * (widthPart / 375));
  }

  static double sizeText(double fontFactorSize) {
    return AppUIConst.baseFontSize * fontFactorSize;
  }

  static double sizeOnText(double fontSize) {
    return (AppUIConst.diagonal * fontSize) / 804.98;
  }
}
