import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SelectCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Chip(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Category: '),
            Text(
              'All',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
            Icon(
              Platform.isIOS
                  ? CupertinoIcons.down_arrow
                  : Icons.keyboard_arrow_down,
            ),
          ],
        ),
      ),
    );
  }
}
