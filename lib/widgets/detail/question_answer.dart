import 'package:flutter/material.dart';
import '../../models/detail_course.dart';

class QuestionAnswer extends StatelessWidget {
  final DetailCourseResult detailCourseResult;

  QuestionAnswer(this.detailCourseResult);
  @override
  Widget build(BuildContext context) {
    final question = detailCourseResult.quistion;
    final answer = detailCourseResult.answer;
    final questionPhoto = detailCourseResult.quistionPhoto;
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 32),
            width: double.infinity,
            height: 200,
            child: Image.network(
              questionPhoto,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            question,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(answer),
        ],
      ),
    );
  }
}
