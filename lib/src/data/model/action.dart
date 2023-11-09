//
// AUTO-GENERATED FILE BY OPENAPI_GENERATOR, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action.g.dart';

/// Action
///
/// Properties:
/// * [actionType]
/// * [title]
@BuiltValue()
abstract class Action implements Built<Action, ActionBuilder> {
  @BuiltValueField(wireName: r'actionType')
  ActionTypeEnum get actionType;

  // enum actionTypeEnum {  DISMISS,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  Action._();

  factory Action([void updates(ActionBuilder b)]) = _$Action;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Action> get serializer => _$ActionSerializer();
}

class _$ActionSerializer implements PrimitiveSerializer<Action> {
  @override
  final Iterable<Type> types = const [Action, _$Action];

  @override
  final String wireName = r'Action';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Action object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'actionType';
    yield serializers.serialize(
      object.actionType,
      specifiedType: const FullType(ActionTypeEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Action object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'actionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActionTypeEnum),
          ) as ActionTypeEnum;
          result.actionType = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Action deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActionBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ActionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DISMISS')
  static const ActionTypeEnum DISMISS = _$actionActionTypeEnum_DISMISS;

  static Serializer<ActionTypeEnum> get serializer =>
      _$actionActionTypeEnumSerializer;

  const ActionTypeEnum._(String name) : super(name);

  static BuiltSet<ActionTypeEnum> get values => _$actionActionTypeEnumValues;

  static ActionTypeEnum valueOf(String name) =>
      _$actionActionTypeEnumValueOf(name);
}
