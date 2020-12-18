import 'package:flutter/material.dart';
import '../../ui/list_course_page.dart';

class CoursesIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: deviceHeight - 100,
          child: Image.asset(
            'assets/images/background_courses.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: deviceHeight - 100,
          color: Color.fromRGBO(32, 85, 114, 0.6),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          width: double.infinity,
          height: deviceHeight - 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Tingkatkan ',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'skill pemrograman ',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Theme.of(context).accentColor,
                          ),
                    ),
                    TextSpan(
                      text: 'kapan pun, dimana pun.',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'We\'re a brand of passionate software engineers and educators with an engaging curriculum backed by real-world software projects ready to boost your career.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(
                height: 50,
              ),
              RaisedButton(
                onPressed: () => Navigator.of(context).pushNamed(
                  ListCoursePage.routeName,
                ),
                child: Text(
                  'Masuk & Memulai Belajar',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Daftar Sekarang'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
