//
// AUTO-GENERATED FILE BY OPENAPI_GENERATOR, DO NOT MODIFY!
//
part of 'message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Message extends Message {
  @override
  final num id;
  @override
  final bool blocking;
  @override
  final String title;
  @override
  final String body;
  @override
  final BuiltList<Action> actions;

  factory _$Message([void Function(MessageBuilder)? updates]) =>
      (new MessageBuilder()..update(updates))._build();

  _$Message._(
      {required this.id,
      required this.blocking,
      required this.title,
      required this.body,
      required this.actions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Message', 'id');
    BuiltValueNullFieldError.checkNotNull(blocking, r'Message', 'blocking');
    BuiltValueNullFieldError.checkNotNull(title, r'Message', 'title');
    BuiltValueNullFieldError.checkNotNull(body, r'Message', 'body');
    BuiltValueNullFieldError.checkNotNull(actions, r'Message', 'actions');
  }

  @override
  Message rebuild(void Function(MessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageBuilder toBuilder() => new MessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Message &&
        id == other.id &&
        blocking == other.blocking &&
        title == other.title &&
        body == other.body &&
        actions == other.actions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, blocking.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Message')
          ..add('id', id)
          ..add('blocking', blocking)
          ..add('title', title)
          ..add('body', body)
          ..add('actions', actions))
        .toString();
  }
}

class MessageBuilder implements Builder<Message, MessageBuilder> {
  _$Message? _$v;

  num? _id;

  num? get id => _$this._id;

  set id(num? id) => _$this._id = id;

  bool? _blocking;

  bool? get blocking => _$this._blocking;

  set blocking(bool? blocking) => _$this._blocking = blocking;

  String? _title;

  String? get title => _$this._title;

  set title(String? title) => _$this._title = title;

  String? _body;

  String? get body => _$this._body;

  set body(String? body) => _$this._body = body;

  ListBuilder<Action>? _actions;

  ListBuilder<Action> get actions =>
      _$this._actions ??= new ListBuilder<Action>();

  set actions(ListBuilder<Action>? actions) => _$this._actions = actions;

  MessageBuilder() {
    Message._defaults(this);
  }

  MessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _blocking = $v.blocking;
      _title = $v.title;
      _body = $v.body;
      _actions = $v.actions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Message other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Message;
  }

  @override
  void update(void Function(MessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Message build() => _build();

  _$Message _build() {
    _$Message _$result;
    try {
      _$result = _$v ??
          new _$Message._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Message', 'id'),
              blocking: BuiltValueNullFieldError.checkNotNull(
                  blocking, r'Message', 'blocking'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Message', 'title'),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, r'Message', 'body'),
              actions: actions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actions';
        actions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Message', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
