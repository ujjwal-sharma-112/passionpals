// LoggedOut
import 'package:flutter/material.dart';
import 'package:passionpals/features/auth/screen/login.dart';
import 'package:passionpals/features/community/screens/add_mods_screen.dart';
import 'package:passionpals/features/community/screens/community_screen.dart';
import 'package:passionpals/features/community/screens/create_community_screen.dart';
import 'package:passionpals/features/community/screens/edit_community_screen.dart';
import 'package:passionpals/features/community/screens/mod_tools_screen.dart';
import 'package:passionpals/features/home/screens/home_screen.dart';
import 'package:passionpals/features/post/screens/add_post_type_screen.dart';
import 'package:passionpals/features/post/screens/comments_screen.dart';
import 'package:passionpals/features/user_profile/screens/edit_profile_screen.dart';
import 'package:passionpals/features/user_profile/screens/user_profile_screen.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(child: LoginScreen()),
  },
);

// LoggedIn
final loggedInRoute = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(
          child: HomeScreen(),
        ),
    '/create-community': (_) => const MaterialPage(
          child: CreateCommunityScreen(),
        ),
    '/r/:name': (routeData) => MaterialPage(
          child: CommunityScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/mod-tools/:name': (routeData) => MaterialPage(
          child: ModToolsScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/edit-community/:name': (routeData) => MaterialPage(
          child: EditCommunityScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/add-mods/:name': (routeData) => MaterialPage(
          child: AddModsScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/u/:uid': (routeData) => MaterialPage(
          child: UserProfileScreen(
            uid: routeData.pathParameters['uid']!,
          ),
        ),
    '/edit-profile/:uid': (routeData) => MaterialPage(
          child: EditProfileScreen(
            uid: routeData.pathParameters['uid']!,
          ),
        ),
    '/add-post/:type': (route) => MaterialPage(
          child: AddPostTypeScreen(
            type: route.pathParameters['type']!,
          ),
        ),
    '/post/:postId/comments': (route) => MaterialPage(
          child: CommentsScreen(
            postId: route.pathParameters['postId']!,
          ),
        ),
  },
);
