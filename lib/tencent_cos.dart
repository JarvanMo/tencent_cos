import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class TencentCos {
  static const MethodChannel _channel = const MethodChannel('openflutter.club/tencent_cos');

  static void uploadByFile(
      String region,
      String appid,
      String bucket,
      String secretId,
      String secretKey,
      String sessionToken,
      String expiredTime,
      String cosPath,
      String localPath) {
    _channel.invokeMethod('TencentCos.uploadFile', {
      'region': region,
      'appid': appid,
      'bucket': bucket,
      'secretId': secretId,
      'secretKey': secretKey,
      'expiredTime': expiredTime,
      'sessionToken': sessionToken,
      'cosPath': cosPath,
      'localPath': localPath,
    });
  }

  static syncUpload({
    @required String region,
    @required  String appid,
    @required String bucket,
    @required String secretId,
    @required String secretKey,
    @required String sessionToken,
    @required String expiredTime,
    @required String cosPath,
    @required String localPath
}){

  }

  static void setMethodCallHandler(Future<dynamic> handler(MethodCall call)) {
    _channel.setMethodCallHandler(handler);
  }
}
