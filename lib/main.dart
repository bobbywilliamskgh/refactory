import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './common/styles.dart';
import './ui/auth_page.dart';
import './providers/auth.dart';
import './ui/tab_page.dart';
import './ui/list_course_page.dart';
import './ui/detail_course.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Auth(),
      child: MaterialApp(
        title: 'Refactory',
        theme: ThemeData(
          primaryColor: primaryColor,
          accentColor: secondaryColor,
          accentColorBrightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: myTextTheme,
          appBarTheme: AppBarTheme(
            textTheme: myTextTheme.apply(
              bodyColor: Colors.black,
            ),
            elevation: 0,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: secondaryColor,
            unselectedItemColor: Colors.grey,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: secondaryColor,
            textTheme: ButtonTextTheme.accent,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          iconTheme: IconThemeData(size: 14, color: secondaryColor),
        ),
        initialRoute: AuthPage.routeName,
        routes: {
          AuthPage.routeName: (context) => AuthPage(),
          TabPage.routeName: (context) => TabPage(
                userData: ModalRoute.of(context).settings.arguments,
              ),
          ListCoursePage.routeName: (context) => ListCoursePage(),
          DetailCourse.routeName: (context) => DetailCourse(),
        },
      ),
    );
  }
}
