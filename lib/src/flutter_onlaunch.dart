import 'dart:async';
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter_onlaunch/src/data/api/api.dart';
import 'package:flutter_onlaunch/src/data/local/onlaunch_data_store.dart';
import 'package:flutter_onlaunch/src/data/model/action.dart';
import 'package:flutter_onlaunch/src/data/model/message.dart';
import 'package:rxdart/rxdart.dart';

class OnLaunch {
  factory OnLaunch() {
    return _instance;
  }

  OnLaunch._internal();

  static final OnLaunch _instance = OnLaunch._internal();

  final StreamController<Message> messageController = BehaviorSubject();

  Stream<Message> get messageStream =>
      messageController.stream.asBroadcastStream();

  String? _publicKey;
  String? _baseUrl;

  final OnLaunchDataStore _dataStore = OnLaunchDataStore();

  void init(String publicKey, String baseUrl) {
    this._publicKey = publicKey;
    this._baseUrl = baseUrl;
    _validateParameter();
  }

  void _validateParameter() {
    if (_publicKey == null || _publicKey!.isEmpty) {
      throw ArgumentError('no public key set');
    }
    if (_baseUrl == null || _baseUrl!.isEmpty) {
      throw ArgumentError('no base url set');
    }
  }

  void check() async {
    _validateParameter();
    final response = await OnLaunchApi(basePath: _baseUrl!)
        .getMessagesApi()
        .getMessages(xApiKey: _publicKey!);

    if (response.statusCode != null && response.statusCode == 200) {
      final messageList = response.data?.toList() ?? [];
      final dismissed = await _dataStore.getDismissedMessagesIds();
      messageList.removeWhere((message) => dismissed.contains(message.id));
      messageList.forEach((message) => messageController.add(message));
    }
  }

  void preview({required bool blocking}) {
    final action = Action((a) => a
      ..actionType = ActionTypeEnum.DISMISS
      ..title = 'Thanks George!');
    final actions = [action].toBuiltList().toBuilder();
    final preview = Message((m) => m
      ..id = Random().nextInt(1000)
      ..title = 'Freezing the energy consumption'
      ..body =
          'What would George do?\n\nWhen the energy prices are heating up it’s '
              'time to cool down and reduce the waste of energy and financial '
              'health. While that seems hard, start with the easy wins: for '
              'example, when did you defrost your freezer the last time? '
              'And by the way, for your normal fridge, 4 degree Celsius are cool '
              'enough. Each degree less means 5% more energy.'
      ..blocking = blocking
      ..actions = actions);
    messageController.add(preview);
  }

  void markMessageDismissed(int messageId) {
    _dataStore.addDismissedMessageId(messageId);
  }
}
