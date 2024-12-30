// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationModelStruct extends BaseStruct {
  NotificationModelStruct({
    String? title,
    String? message,
    String? time,
  })  : _title = title,
        _message = message,
        _time = time;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  static NotificationModelStruct fromMap(Map<String, dynamic> data) =>
      NotificationModelStruct(
        title: data['title'] as String?,
        message: data['message'] as String?,
        time: data['time'] as String?,
      );

  static NotificationModelStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'message': _message,
        'time': _time,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationModelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationModelStruct &&
        title == other.title &&
        message == other.message &&
        time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([title, message, time]);
}

NotificationModelStruct createNotificationModelStruct({
  String? title,
  String? message,
  String? time,
}) =>
    NotificationModelStruct(
      title: title,
      message: message,
      time: time,
    );
