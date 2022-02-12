import 'package:flutter/material.dart';
import 'package:flutter_theme_changer/models/ThemeNotifier.dart';
import 'package:flutter_theme_changer/themes/Themes.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(themeProvider.getTheme == darkTheme
                  ? 'assets/moon.png'
                  : 'assets/sun.png'),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Switch(
                value: themeProvider.getTheme == darkTheme,
                activeColor: themeProvider.getTheme == darkTheme
                    ? Colors.white
                    : Colors.black,
                onChanged: (d) {
                  themeProvider.changeTheme();
                })
          ],
        ),
      ),
    );
  }
}
