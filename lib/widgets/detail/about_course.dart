import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../models/detail_course.dart';

class AboutCourse extends StatelessWidget {
  final DetailCourseResult detailCourseResult;

  AboutCourse(this.detailCourseResult);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
      child: Column(
        children: [
          Text(
            'Tentang Course',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            detailCourseResult.shortDescription,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
