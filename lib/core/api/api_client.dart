// ignore_for_file: only_throw_errors

import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio/core/utils/exceptions.dart';

class ApiClient {
  ApiClient() {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 1000 * 60,
      receiveTimeout: 1000 * 60,
      contentType: 'application/json',
      validateStatus: _validateStatus,
    );

    _dio ??= Dio(options);

    final _token = getToken();

    final presetHeaders = <String, String>{
      if (_token != null) HttpHeaders.authorizationHeader: 'Bearer $_token',
      Headers.acceptHeader: '*/*',
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    _dio!.options.headers = presetHeaders;

    if (kDebugMode) {
      _dio!.interceptors.add(
        LogInterceptor(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          error: false,
        ),
      );
    }
  }

  Dio? _dio;

  static String baseUrl = baseUrl;

  Future<Response> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio!.get(
        uri,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      throw ApiException.getException(e);
    }
  }

  Future<Response> post(
    String uri, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio!.post(
        uri,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      throw ApiException.getException(e);
    }
  }

  Future<Response> put(
    String uri, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio!.put(
        uri,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      throw ApiException.getException(e);
    }
  }

  Future<Response> patch(
    String uri, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio!.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      throw ApiException.getException(e);
    }
  }

  Future<Response> delete(
    String uri, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio!.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      throw ApiException.getException(e);
    }
  }

  String? getToken() {
    return '';
  }

  // validate the status of a request
  bool _validateStatus(int? status) {
    return status! == 200 || status == 201;
  }
}

extension ResponseExtension on Response {
  bool get isSuccess {
    final is200 = statusCode == HttpStatus.ok;
    final is201 = statusCode == HttpStatus.created;
    return is200 || is201;
  }
}
