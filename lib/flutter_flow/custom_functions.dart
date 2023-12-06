import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

double fixDouble(String doubleStr) {
  double number = double.parse(doubleStr);
  return double.parse(number.toStringAsFixed(2));
}

bool isAdded(
  List<dynamic> addedAssets,
  String name,
) {
  bool result = false;
  for (int i = 0; i < addedAssets.length; i++) {
    if (addedAssets[i]['asset'] == name) {
      result = true;
      break;
    }
  }

  return result;
}

String jsonEncode(dynamic assets) {
  return json.encode(assets);
}

double calcPercent(int percent) {
  return percent / 100;
}
