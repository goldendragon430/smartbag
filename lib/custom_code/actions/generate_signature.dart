// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';

Future generateSignature() async {
  int timeStamp = DateTime.now().millisecondsSinceEpoch;
  String queryParams = 'recvWindow=60000&timestamp=$timeStamp';
  String secretKey = FFAppState().secretKey;

  List<int> messageBytes = utf8.encode(queryParams);
  List<int> key = utf8.encode(secretKey);
  Hmac hmac = new Hmac(sha256, key);
  Digest digest = hmac.convert(messageBytes);
  String signature = hex.encode(digest.bytes);
  // Add your function code here!
  FFAppState().update(() {
    FFAppState().signature = signature;
    FFAppState().timestamp = timeStamp;
  });
}
