import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/platform_widget.dart';
import '../widgets/detail/detail_introduction.dart';
import '../widgets/detail/about_course.dart';
import '../widgets/detail/course_sections.dart';
import '../widgets/detail/question_answer.dart';
import '../models/detail_course.dart';

class DetailCourse extends StatelessWidget {
  static const routeName = 'detail-course';

  Widget _buildContent(BuildContext context) {
    return FutureBuilder<String>(
      future: DefaultAssetBundle.of(context)
          .loadString('assets/json/detail_course.json'),
      builder: (context, snapshot) {
        final DetailCourseResult detailCourse = getDetailCourse(snapshot.data);
        return SingleChildScrollView(
          child: Column(
            children: [
              DetailIntroduction(),
              AboutCourse(detailCourse),
              CourseSections(detailCourse),
              QuestionAnswer(detailCourse),
            ],
          ),
        );
      },
    );
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
