import 'package:flutter/material.dart';
import 'package:flutter_theme_changer/models/ThemeNotifier.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/Home.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //required to use platform channels to call native code.
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool themeBool = prefs.getBool("isDark") ?? false; //null check
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(isDark: themeBool),
      child: MainWidget(),
    ),
  );
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Wrapping MaterialApp with Consumer makes the ThemeProvider available throughout the app.
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp(
        title: 'Flutter Theme',
        home: HomeScreen(),
        theme: themeProvider.getTheme,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
