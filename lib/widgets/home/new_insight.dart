import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewInsight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: const EdgeInsets.all(64),
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  'INSIGHT TERBARU',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Knowledge Sharing',
                  style: Theme.of(context).textTheme.headline6.copyWith(),
                ),
                const SizedBox(
                  height: 64,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      Icon(
                        Platform.isIOS
                            ? CupertinoIcons.arrow_right
                            : Icons.arrow_forward,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
