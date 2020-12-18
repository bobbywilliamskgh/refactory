import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/platform_widget.dart';
import '../widgets/courses/courses_introduction.dart';
import '../widgets/courses/refactory_features_info.dart';
import '../widgets/courses/programming_course_info.dart';
import '../widgets/courses/course_report_overview.dart';
import '../widgets/courses/start_learning.dart';

class CoursePage extends StatelessWidget {
  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        CoursesIntroduction(),
        RefactoryFeaturesInfo(),
        ProgrammingCourseInfo(),
        CourseReportOverview(),
        StartLearning(),
      ],
    ));
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/refactory.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        centerTitle: true,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/refactory.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        transitionBetweenRoutes: false,
      ),
      child: _buildContent(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
