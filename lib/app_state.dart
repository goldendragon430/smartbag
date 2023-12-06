import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _apiKey = '';
  String get apiKey => _apiKey;
  set apiKey(String _value) {
    _apiKey = _value;
  }

  String _secretKey = '';
  String get secretKey => _secretKey;
  set secretKey(String _value) {
    _secretKey = _value;
  }

  String _signature = '';
  String get signature => _signature;
  set signature(String _value) {
    _signature = _value;
  }

  int _timestamp = 0;
  int get timestamp => _timestamp;
  set timestamp(int _value) {
    _timestamp = _value;
  }

  String _connected = '';
  String get connected => _connected;
  set connected(String _value) {
    _connected = _value;
  }

  dynamic _assets;
  dynamic get assets => _assets;
  set assets(dynamic _value) {
    _assets = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
