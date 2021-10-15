import 'dart:async';
import 'dart:io';

import 'package:caspa_mobility/copy/test.dart';
import 'package:caspa_mobility/pages/anbar_page/anbar_page.dart';
import 'package:caspa_mobility/pages/media_page/media_page.dart';
import 'package:caspa_mobility/pages/timeline_page/timeline_page.dart';
import 'package:caspa_mobility/services/notification_service.dart';
import 'package:caspa_mobility/pages/splash_page.dart';
import 'package:caspa_mobility/utils/constants/colors.dart';
import 'package:device_preview/device_preview.dart';
import 'package:device_preview/plugins.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'pages/in_app_webiew_example.screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

Future main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: MyColors.mainOrange, // navigation bar color
    statusBarColor: MyColors.mainOrange, // status bar color
  ));
  //debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  WidgetsFlutterBinding.ensureInitialized();
   await Permission.camera.request();
   await Permission.microphone.request();
   await Permission.storage.request();
  await Firebase.initializeApp();

  // await  PermissionHandler().requestPermissions(<PermissionGroup>[
  //   PermissionGroup.storage,
  //   PermissionGroup.camera,
  //   PermissionGroup.photos
  // ]);
  //FirebaseMessaging.instance;
  await configureFcm() ;
  _createFakeData();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);

    var swAvailable = await AndroidWebViewFeature.isFeatureSupported(
        AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE);
    var swInterceptAvailable = await AndroidWebViewFeature.isFeatureSupported(
        AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST);

    if (swAvailable && swInterceptAvailable) {
      AndroidServiceWorkerController serviceWorkerController =
          AndroidServiceWorkerController.instance();

      serviceWorkerController.serviceWorkerClient = AndroidServiceWorkerClient(
        shouldInterceptRequest: (request) async {
          print(request);
          return null;
        },
      );
    }
  }

  //void main() => runApp(MaterialApp(home: WebViewExample()));

  runApp(ScreenUtilInit(
      designSize: Size(371, 812),
  builder: () => MaterialApp(
        title: "CASPA",
        debugShowCheckedModeBanner: false,
        home:
     //   AnbarPage()
        MediaPage()
    //    ProcessTimelinePage()
              //    SplashPage()
    ),
  ));

}

Future<void> _createFakeData() async {
  final directory = (await getApplicationDocumentsDirectory()).path;

  final file1 = File(path.join(directory, 'example.json'));
  await file1.writeAsString('{ "example": true}');

  final directoryWithFile = Directory(path.join(directory, 'subdir'));
  await directoryWithFile.create();

  final emptyDirectory = Directory(path.join(directory, 'emptyDir'));
  await emptyDirectory.create();

  final file2 = File(path.join(directoryWithFile.path, 'example2.json'));
  await file2.writeAsString('{ "example2": true}');

  final file3 = File(path.join(directoryWithFile.path, 'example2.bin'));
  await file3.writeAsString('kjh8bhb');
}

// MaterialApp(
// title: "CASPA",
// debugShowCheckedModeBanner: false,
// home: SplashPage())
