import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../models/detail_course.dart';

class CourseSections extends StatelessWidget {
  final DetailCourseResult detailCourseResult;

  CourseSections(this.detailCourseResult);

  @override
  Widget build(BuildContext context) {
    final List<MateriCourse> materiCourses = detailCourseResult.materiCourse;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
      child: Column(
        children: [
          Text(
            'Materi Course',
            style: Theme.of(context).textTheme.headline5,
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: materiCourses.length,
              itemBuilder: (context, index) {
                return SectionItem(materiCourses[index]);
              })
        ],
      ),
    );
  }
}

class SectionItem extends StatelessWidget {
  final MateriCourse materiCourse;

  SectionItem(this.materiCourse);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.symmetric(vertical: 8),
          color: Colors.grey[300],
          width: double.infinity,
          height: 50,
          child: Text(
            materiCourse.section,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: materiCourse.data.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.grey[300],
              child: ListTile(
                leading: Icon(
                  Platform.isIOS ? CupertinoIcons.video_camera : Icons.movie,
                  size: 20,
                ),
                title: Text(
                    '${materiCourse.data[index].title}(${materiCourse.data[index].timeIn})'),
                trailing: Container(
                  padding: EdgeInsets.all(8),
                  color: Theme.of(context).accentColor,
                  child: Text(
                    'START',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
