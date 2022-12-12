import 'package:flutter/material.dart';
import 'package:instagram/screens/feed_screens.dart';
import '../screens/add_post_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('search'),
  AddPostScreen(),
  Text('notify'),
  Text('profile'),
];