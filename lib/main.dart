import 'package:flutter/material.dart';
import './common/styles.dart';
import './ui/auth_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refactory',
      theme: ThemeData(
          primaryColor: primaryColor,
          accentColor: secondaryColor,
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: myTextTheme,
          appBarTheme: AppBarTheme(
              textTheme: myTextTheme.apply(
                bodyColor: Colors.black,
              ),
              elevation: 0),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: secondaryColor,
              unselectedItemColor: Colors.grey),
          buttonTheme: ButtonThemeData(
            buttonColor: secondaryColor,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
          ),
          iconTheme: IconThemeData(size: 14, color: secondaryColor)),
      initialRoute: AuthPage.routeName,
    );
  }
}
