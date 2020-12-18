import 'package:flutter/material.dart';

class RefactoryFeaturesInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Bagaimana Refactory Course membantu ',
              style: Theme.of(context).textTheme.headline4,
              children: [
                TextSpan(
                  text: 'meningkatkan skill ',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Theme.of(context).accentColor,
                      ),
                ),
                TextSpan(
                  text: 'anda.',
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Pelajari Lebih'),
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              'assets/images/frame.png',
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
