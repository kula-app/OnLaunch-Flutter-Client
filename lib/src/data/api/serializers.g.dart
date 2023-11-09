part of 'serializers.dart';

Serializers _$serializers = (Serializers().toBuilder()
      ..add(Message.serializer)
      ..add(Action.serializer)
      ..add(ActionTypeEnum.serializer)
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Message)]),
        ListBuilder<Message>.new,
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Action)]),
        ListBuilder<Action>.new,
      ))
    .build();
