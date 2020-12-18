import 'package:flutter/material.dart';

class StartLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(64),
          child: Column(
            children: [
              Text(
                'Ready to start Learning?',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white,
                    ),
              ),
              const SizedBox(
                height: 32,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Daftar Sekarang'),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'LANGKAH MUDAH',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Theme.of(context).accentColor),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Memulai Belajar di Refactory Course',
                style: Theme.of(context).textTheme.headline6,
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: Image.asset('assets/images/frame-3-1.png'),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Pelajari Lebih'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
