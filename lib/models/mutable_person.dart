//   //
//  Import LIBRARIES
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
//  Import FILES
//  PARTS
//  FREEZE

part 'mutable_person.freezed.dart';
//  PROVIDERS
//  //  //

// NB with @freezed all the fields are immutalbe. However @unfreezed allows you to make them mutable.
@unfreezed
class MutablePerson with _$MutablePerson {
  factory MutablePerson({
    required final int id,
    required String name,
    required String email,
  }) = _MutablePerson;
}
