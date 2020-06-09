import 'package:animative/index.dart';

abstract class TextStyleCustom {
  static TextTheme textTheme = TextTheme(
    bodyText2: normalFont,
    headline6: boldFont.copyWith(color: Colors.white),
  );

  //general
  static TextStyle splashText = lightFont.merge(fontSize40).merge(whiteTextColor);
  static TextStyle appBarText = boldFont.merge(fontSize20).merge(whiteTextColor);

  //base font
  static const lightFont = const TextStyle(
    fontSize: 14.0,
    color: ColorCustom.textGrey,
    fontWeight: FontWeight.w100,
    fontStyle: FontStyle.normal,
    fontFamily: 'NotoSansJP',
  );

  static const normalFont = const TextStyle(
    fontSize: 14.0,
    color: ColorCustom.textGrey,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    fontFamily: 'NotoSansJP',
  );

  static const mediumFont = const TextStyle(
    fontSize: 14.0,
    color: ColorCustom.textGrey,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontFamily: 'NotoSansJP',
  );

  static const boldFont = const TextStyle(
    fontSize: 14.0,
    color: ColorCustom.textGrey,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontFamily: 'NotoSansJP',
  );

  //font color
  static const whiteTextColor = const TextStyle(color: Colors.white);
  static const subTextColor = const TextStyle(color: ColorCustom.subTextGrey);
  static const hiddenTextColor = const TextStyle(color: ColorCustom.hiddenGrey);
  static const accentTextColor = const TextStyle(color: ColorCustom.accentBlue);

  //font size
  static const fontSize12 = const TextStyle(fontSize: 12.0);
  static const fontSize14 = const TextStyle(fontSize: 14.0);
  static const fontSize15 = const TextStyle(fontSize: 15.0);
  static const fontSize16 = const TextStyle(fontSize: 16.0);
  static const fontSize18 = const TextStyle(fontSize: 18.0);
  static const fontSize20 = const TextStyle(fontSize: 20.0);
  static const fontSize22 = const TextStyle(fontSize: 22.0);
  static const fontSize24 = const TextStyle(fontSize: 24.0);
  static const fontSize40 = const TextStyle(fontSize: 40.0);
}