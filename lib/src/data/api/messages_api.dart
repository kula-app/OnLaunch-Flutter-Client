import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:flutter_onlaunch/src/data/model/message.dart';

//
// AUTO-GENERATED FILE BY OPENAPI_GENERATOR, DO NOT MODIFY!
//

class MessagesApi {
  final Dio _dio;

  final Serializers _serializers;

  const MessagesApi(this._dio, this._serializers);

  /// Get messages for an app.
  /// Retrieves all messages for an app based on the provided API key.
  ///
  /// Parameters:
  /// * [xApiKey] - The API key for the app
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extra] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<Message>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<Message>>> getMessages({
    required String xApiKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const path = '/api/v0.1/messages';
    final options = Options(
      method: 'GET',
      headers: <String, dynamic>{
        'x-api-key': xApiKey,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final response = await _dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<Message>? responseData;

    try {
      final rawResponse = response.data;
      responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(BuiltList, [FullType(Message)]),
            )! as BuiltList<Message>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<Message>>(
      data: responseData,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }
}
