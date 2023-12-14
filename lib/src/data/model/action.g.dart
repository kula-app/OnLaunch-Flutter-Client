//
// AUTO-GENERATED FILE BY OPENAPI_GENERATOR, DO NOT MODIFY!
//

part of 'action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActionTypeEnum _$actionActionTypeEnum_DISMISS =
    const ActionTypeEnum._('DISMISS');

ActionTypeEnum _$actionActionTypeEnumValueOf(String name) {
  switch (name) {
    case 'DISMISS':
      return _$actionActionTypeEnum_DISMISS;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ActionTypeEnum> _$actionActionTypeEnumValues =
    new BuiltSet<ActionTypeEnum>(const <ActionTypeEnum>[
  _$actionActionTypeEnum_DISMISS,
]);

Serializer<ActionTypeEnum> _$actionActionTypeEnumSerializer =
    new _$ActionActionTypeEnumSerializer();

class _$ActionActionTypeEnumSerializer
    implements PrimitiveSerializer<ActionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DISMISS': 'DISMISS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DISMISS': 'DISMISS',
  };

  @override
  final Iterable<Type> types = const <Type>[ActionTypeEnum];
  @override
  final String wireName = 'ActionActionTypeEnum';

  @override
  Object serialize(Serializers serializers, ActionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActionTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Action extends Action {
  @override
  final ActionTypeEnum actionType;
  @override
  final String title;

  factory _$Action([void Function(ActionBuilder)? updates]) =>
      (new ActionBuilder()..update(updates))._build();

  _$Action._({required this.actionType, required this.title}) : super._() {
    BuiltValueNullFieldError.checkNotNull(actionType, r'Action', 'actionType');
    BuiltValueNullFieldError.checkNotNull(title, r'Action', 'title');
  }

  @override
  Action rebuild(void Function(ActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionBuilder toBuilder() => new ActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Action &&
        actionType == other.actionType &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Action')
          ..add('actionType', actionType)
          ..add('title', title))
        .toString();
  }
}

class ActionBuilder implements Builder<Action, ActionBuilder> {
  _$Action? _$v;

  ActionTypeEnum? _actionType;

  ActionTypeEnum? get actionType => _$this._actionType;

  set actionType(ActionTypeEnum? actionType) => _$this._actionType = actionType;

  String? _title;

  String? get title => _$this._title;

  set title(String? title) => _$this._title = title;

  ActionBuilder() {
    Action._defaults(this);
  }

  ActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actionType = $v.actionType;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Action other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Action;
  }

  @override
  void update(void Function(ActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Action build() => _build();

  _$Action _build() {
    final _$result = _$v ??
        new _$Action._(
            actionType: BuiltValueNullFieldError.checkNotNull(
                actionType, r'Action', 'actionType'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Action', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
