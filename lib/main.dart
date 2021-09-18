import 'dart:async';
import 'dart:io';

import 'package:caspa_mobility/copy/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'in_app_webiew_example.screen.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';

// InAppLocalhostServer localhostServer = new InAppLocalhostServer();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Permission.camera.request();
  // await Permission.microphone.request();
  // await Permission.storage.request();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.pink, // status bar color
  ));
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

  runApp(MaterialApp(

      debugShowCheckedModeBanner: false,
      home: InAppWebViewExampleScreen()));
}
//
// Drawer myDrawer({@required BuildContext context}) {
//   return Drawer(
//     child: ListView(
//       padding: EdgeInsets.zero,
//       children: <Widget>[
//         DrawerHeader(
//           child: Text('flutter_inappbrowser example'),
//           decoration: BoxDecoration(
//             color: Colors.blue,
//           ),
//         ),
//         ListTile(
//           title: Text('InAppBrowser'),
//           onTap: () {
//             Navigator.pushReplacementNamed(context, '/InAppBrowser');
//           },
//         ),
//         ListTile(
//           title: Text('ChromeSafariBrowser'),
//           onTap: () {
//             Navigator.pushReplacementNamed(context, '/ChromeSafariBrowser');
//           },
//         ),
//         ListTile(
//           title: Text('InAppWebView'),
//           onTap: () {
//             Navigator.pushReplacementNamed(context, '/');
//           },
//         ),
//         ListTile(
//           title: Text('HeadlessInAppWebView'),
//           onTap: () {
//             Navigator.pushReplacementNamed(context, '/HeadlessInAppWebView');
//           },
//         ),
//       ],
//     ),
//   );
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(initialRoute: '/', routes: {
//       '/': (context) => WebViewExample(),
//     });
//   }
// }
