//
// AUTO-GENERATED FILE BY OPENAPI_GENERATOR, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
// ignore_for_file: unused_import

import 'package:flutter_onlaunch/src/data/model/action.dart';
import 'package:flutter_onlaunch/src/data/model/message.dart';
import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';

part 'serializers.g.dart';

@SerializersFor([
  Action,
  Message,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Message)]),
        ListBuilder<Message>.new,
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
