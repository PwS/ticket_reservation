part of 'utils.dart';

class Screen {
  late Size screenSize;

  Screen(this.screenSize);

  double sizeHeight(height) {
    double resultCalculation = screenSize.width / height;
    return screenSize.height / resultCalculation;
  }

  double sizeWidth(width) {
    double resultCalculation = screenSize.width / width;
    return screenSize.width / resultCalculation;
  }

  double wp(percentage) {
    return percentage / 100 * screenSize.width;
  }

  double hp(percentage) {
    return percentage / 100 * screenSize.height;
  }

  double getWidthPx(int pixels) {
    return (pixels / 3.61) / 100 * screenSize.width;
  }

  static bool isScreenLarge(double width, double pixel) {
    return width * pixel >= 1440;
  }

  static bool isScreenMedium(double width, double pixel) {
    return width * pixel < 1440 && width * pixel >= 1080;
  }

  static bool isScreenSmall(double width, double pixel) {
    return width * pixel <= 720;
  }
}
