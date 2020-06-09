import 'package:animative/index.dart';

final theme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: TextStyleCustom.textTheme,
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(
      title: TextStyleCustom.appBarText,
    ),
  ),
  dividerColor: ColorCustom.borderGrey,
);