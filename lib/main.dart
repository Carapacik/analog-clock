import 'package:analogclock/home/home_screen.dart';
import 'package:analogclock/home/components/my_themere_provider.dart';
import 'package:analogclock/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ClockThemeModel(),
        child: Consumer<ClockThemeModel>(
            builder: (context, theme, child) => MaterialApp(
                  title: 'Analog clock',
                  theme: themeData(context),
                  darkTheme: darkThemeData(context),
                  themeMode:
                      theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
                  home: HomePage(),
                ),),);
  }
}
