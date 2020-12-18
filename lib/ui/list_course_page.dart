import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/platform_widget.dart';
import '../widgets/list_course/select_category.dart';
import '../widgets/list_course/find_course.dart';
import '../widgets/list_course/course_list_view.dart';

class ListCoursePage extends StatelessWidget {
  static const routeName = 'list-course';

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectCategory(),
            const SizedBox(
              height: 16,
            ),
            FindCourse(),
            const SizedBox(
              height: 16,
            ),
            CourseListView(),
          ],
        ),
      ),
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
