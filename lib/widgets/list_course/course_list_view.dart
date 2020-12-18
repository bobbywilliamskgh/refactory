import 'package:flutter/material.dart';
import '../../models/course.dart';
import '../../ui/detail_course.dart';

class CourseListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(
        'assets/json/list_course.json',
      ),
      builder: (context, snapshot) {
        final List<Course> courseList = getCourses(snapshot.data);
        print(courseList);
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: courseList.length,
          itemBuilder: (context, index) {
            return CourseItem(courseList[index]);
          },
        );
      },
    );
  }
}

class CourseItem extends StatelessWidget {
  final Course course;

  CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(DetailCourse.routeName),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  course.photoUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    course.shortDescription,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(course.user.photoUrl),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(course.user.name),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
