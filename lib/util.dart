import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:porfolio_app/const.dart';
import 'package:url_launcher/url_launcher.dart';

showSuccessAlert(BuildContext context, String data) {
  FlutterClipboard.copy(data).then(
    (value) => Fluttertoast.showToast(
      backgroundColor: Colors.deepPurple,
      msg: 'Copied!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 16,
    ),
  );
}

Future<void> externalLaunchUrl(Uri url) async {
  if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
    throw Exception('Could not launch $url');
  }
}

String checkDeviceSize(double width) {
  if (width < 480.0) {
    return mobile;
  } else if (width < 767.0) {
    return tablet;
  } else if (width < 1024.0) {
    return ipad;
  } else {
    return desktop;
  }
}

double adjustFontSize(double width, String type) {
  return (type == header) ? 18 : 14;
  // if (checkDeviceSize(width) == mobile) {
  //   return type == header ? 12.0 : 6.0;
  // } else if (checkDeviceSize(width) == ipad) {
  //   return type == header ? 14.0 : 8.0;
  // } else {
  //   return type == header ? 16.0 : 10.0;
  // }
}
