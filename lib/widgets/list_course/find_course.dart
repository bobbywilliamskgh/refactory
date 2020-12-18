import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FindCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Find a course',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
