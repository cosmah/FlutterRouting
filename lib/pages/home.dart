import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing/project/routes/app_route_constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home'),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.aboutRouteName);
              },
              child: Text('About'),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.profileRouteName, params: {
                  'username': 'Cosmah',
                });
              },
              child: Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.contactRouteName);
              },
              child: Text('Contact Us'),
            ),
          ],
        ),
      ),
    );
  }
}
