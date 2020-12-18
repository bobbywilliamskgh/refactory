import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helpers/location_helper.dart';
import '../models/user_location.dart';
import '../widgets/auth/auth_form.dart';
import '../widgets/current_position.dart';

class AuthPage extends StatefulWidget {
  static const routeName = 'auth-page';
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            AuthForm(),
            StreamProvider<UserLocation>(
              create: (context) => LocationHelper().locationStream,
              child: CurrentPosition(),
            ),
          ],
        ),
      ),
    );
  }
}
