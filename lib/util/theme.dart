import 'package:animative/index.dart';

final theme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: TextStyleCustom.textTheme,
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(headline6: TextStyleCustom.appBarText),
  ),
  dividerColor: ColorCustom.borderGrey,
);
