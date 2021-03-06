import 'dart:async';

import 'package:flutter/services.dart';

class HelloPlugin {
  static const MethodChannel _channel = const MethodChannel('hello_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static showToast(String msg) async {
    await _channel.invokeMethod("showToast", msg);
  }
}
