// ignore_for_file: unnecessary_getters_setters, duplicate_ignore

import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _introIndex = 0;
  int get introIndex => _introIndex;
  set introIndex(int value) {
    _introIndex = value;
  }

  List<NotificationModelStruct> _notificationList = [
    NotificationModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Target Audience\",\"message\":\"People who are curious about mood\\ntracking but unsure where to start.\",\"time\":\"30 seconds ago\"}')),
    NotificationModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Journey of self-discovery\",\"message\":\"Anyone interested in personal stories\\nand self-improvement journeys.\",\"time\":\"3 days ago\"}')),
    NotificationModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Tracking your moods\",\"message\":\"Interested in self-improvement but\\nhaven\'t considered mood tracking.\",\"time\":\"7 days ago\"}')),
    NotificationModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Benefits of tracking your moods\",\"message\":\"Self-improvement but haven\'t considered\\nmood tracking.\",\"time\":\"a few seconds ago\"}')),
    NotificationModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Your low points matters\",\"message\":\"Learning coping mechanisms for dealing\\nwith difficult emotions\",\"time\":\"15 days ago\"}'))
  ];
  // ignore: unnecessary_getters_setters
  List<NotificationModelStruct> get notificationList => _notificationList;
  set notificationList(List<NotificationModelStruct> value) {
    _notificationList = value;
  }

  void addToNotificationList(NotificationModelStruct value) {
    notificationList.add(value);
  }

  void removeFromNotificationList(NotificationModelStruct value) {
    notificationList.remove(value);
  }

  void removeAtIndexFromNotificationList(int index) {
    notificationList.removeAt(index);
  }

  void updateNotificationListAtIndex(
    int index,
    NotificationModelStruct Function(NotificationModelStruct) updateFn,
  ) {
    notificationList[index] = updateFn(_notificationList[index]);
  }

  void insertAtIndexInNotificationList(
      int index, NotificationModelStruct value) {
    notificationList.insert(index, value);
  }
}
