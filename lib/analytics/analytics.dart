import 'package:firebase_analytics/firebase_analytics.dart';
// ignore: unnecessary_import
import 'package:firebase_analytics/observer.dart';
// // ignore: unused_import
// ignore: unused_import
import 'package:flutter/material.dart';

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
FirebaseAnalyticsObserver observer =
    FirebaseAnalyticsObserver(analytics: analytics);


    