import 'dart:async';

import 'package:flutter/services.dart';

class PluginCodelab {
  static const MethodChannel _channel =
      const MethodChannel('PluginCodelab');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static  get showAlertDialog async {
    await _channel.invokeMethod('showAlertDialog');
  }
}
