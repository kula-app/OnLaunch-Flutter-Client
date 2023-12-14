//
// AUTO-GENERATED FILE BY OPENAPI_GENERATOR, DO NOT MODIFY!
//

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:flutter_onlaunch/src/data/api/serializers.dart';

import 'messages_api.dart';

class OnLaunchApi {
  final Dio dio;
  final Serializers serializers = standardSerializers;

  OnLaunchApi({
    Dio? dio,
    required String basePath,
    List<Interceptor>? interceptors,
  }) : this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors != null) this.dio.interceptors.addAll(interceptors);
  }

  /// Get MessagesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MessagesApi getMessagesApi() {
    return MessagesApi(dio, serializers);
  }
}
