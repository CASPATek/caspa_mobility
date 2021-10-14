// Package imports:
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:url_launcher/url_launcher.dart';

final messaging = FirebaseMessaging.instance;

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> onBackgroundMessage(RemoteMessage message) async {
  print('onBackgroundMessage: ${message.data}');

  //await _firebaseMessaging.sendMessage();
}

void configureFcm({String topic}) async {
  //initializeFCMNotification();
  //print("test");
  FirebaseMessaging.onMessage.listen((event) {
    print('onMessage: ${event.data}');
  });

  FirebaseMessaging.onMessageOpenedApp.listen((event) {
    print('onMessageOpenedApp: $event');

    // NavigateUtils.pushPage(context, SettingsPage());
    // print("testttsstts");
  });

  FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);
  messaging.subscribeToTopic('all');
}

initializeFCMNotification() async {
  var initializationSettingsAndroid =
      AndroidInitializationSettings('circle_icon');
  var initializationSettingsIOS = IOSInitializationSettings(
    requestSoundPermission: false,
    requestBadgePermission: false,
    requestAlertPermission: false,
    onDidReceiveLocalNotification: onDidReceiveLocalNotification,
  );
  var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  var res = await flutterLocalNotificationsPlugin
      .initialize(initializationSettings, onSelectNotification: (var payload) {
    onSelectNotification(payload);
  });

  // generalSubscribtion();
}

Future onSelectNotification(var payload) async {
  if (payload != null) {
    debugPrint('notification payload: ' + payload);
    launch(payload);
  }
}

Future onDidReceiveLocalNotification(
    int id, String title, String body, String payload) {}

void unsubscribe({String topic}) {
  messaging.unsubscribeFromTopic(topic);
}

Future<bool> requestPermission() async {
  var settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: true,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized ||
      settings.authorizationStatus == AuthorizationStatus.provisional) {
    return true;
  }

  return false;
}
