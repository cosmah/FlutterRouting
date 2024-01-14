import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing/pages/about.dart';
import 'package:routing/pages/contact_us.dart';
import 'package:routing/pages/error_page.dart';
import 'package:routing/pages/home.dart';
import 'package:routing/pages/profile.dart';
import 'package:routing/project/routes/app_route_constants.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: "/",
        pageBuilder: (context, state) {
          return MaterialPage(child: Home());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.profileRouteName,
        path: "/profile/:username", //accept username as a parameter
        pageBuilder: (context, state) {
          return MaterialPage(
              child: Profile(
            username: state.params['username']!,
          ));
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.aboutRouteName,
        path: "/about",
        pageBuilder: (context, state) {
          return MaterialPage(child: About());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.contactRouteName,
        path: "/contact",
        pageBuilder: (context, state) {
          return MaterialPage(child: Contact());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(child: ErrorPage());
    },
  );
}
