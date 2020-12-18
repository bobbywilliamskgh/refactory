import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../models/alumni_report.dart';

class CourseReportOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey[100],
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'MEET OUR GRADUATES',
                style: TextStyle(color: Colors.black45),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Review',
                style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 16,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Read what our alumni said on ',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.black54),
                  children: [
                    TextSpan(
                      text: 'Course Report',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        FutureBuilder<String>(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/json/alumni_report.json'),
          builder: (context, snapshot) {
            final List<AlumniReport> alumniReports =
                getAlumniReports(snapshot.data);
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: alumniReports.length,
              itemBuilder: (context, index) {
                return CourseReportItem(alumniReports[index]);
              },
            );
          },
        )
      ],
    );
  }
}

class CourseReportItem extends StatelessWidget {
  final AlumniReport alumniReport;

  CourseReportItem(this.alumniReport);

  List<Widget> starIcons(int totalStar) {
    List<Icon> stars = [];

    for (var i = 1; i <= totalStar; i++) {
      stars.add(
        Platform.isIOS
            ? Icon(
                CupertinoIcons.star,
                size: 20,
              )
            : Icon(
                Icons.star,
                size: 20,
              ),
      );
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(32),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: Image.network(alumniReport.user.photoUrl),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              alumniReport.user.name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              alumniReport.user.from,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: starIcons(alumniReport.star),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              alumniReport.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              alumniReport.description,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
