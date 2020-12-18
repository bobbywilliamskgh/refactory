import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: deviceHeight * 0.7,
          child: Image.asset(
            'assets/images/laptop.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: deviceHeight * 0.7,
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
          height: deviceHeight * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'HTML & CSS Introduction',
                style: Theme.of(context).textTheme.headline4.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'HTML ',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  children: [
                    TextSpan(
                      text: 'dan ',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    TextSpan(
                      text: 'CSS ',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text:
                          'adalah materi dasar untuk pengembangan web. Setiap web developer harus memiliki pengetahuan dasar setidaknya HTML dan CSS.',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'Mulai Belajar',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
