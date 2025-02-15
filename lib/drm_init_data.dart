import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:picture_in_picture_flutter/scheme_data.dart';

class DrmInitData {
  DrmInitData({this.schemeType, this.schemeData = const []});

  final List<SchemeData> schemeData;
  final String? schemeType;

  @override
  bool operator ==(dynamic other) {
    if (other is DrmInitData) {
      return schemeType == other.schemeType &&
          const ListEquality<SchemeData>().equals(other.schemeData, schemeData);
    }
    return false;
  }

  @override
  // ignore: deprecated_member_use
  int get hashCode => hashValues(schemeType, schemeData);
}
