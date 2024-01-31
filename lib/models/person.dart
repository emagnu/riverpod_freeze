//   //
//  Import LIBRARIES
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
//  Import FILES
//  PARTS
//  FREEZE

part 'person.freezed.dart';
//  PROVIDERS
//  //  //

//NB @freeze means: All FIELDS are IMMUTABLE
@freezed
class Person with _$Person {
  const factory Person({
    required int id,
    required String name,
    required String email,
  }) = _Person;
}
