import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_web/common/model/common_response.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();

  dio.interceptors.add(
    CustomInterceptor(ref: ref)
  );
  return dio;
},);

class CustomInterceptor<T> extends Interceptor{
  final ProviderRef ref;

  CustomInterceptor({required this.ref});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('[REQ] [${options.method}] ${options.uri}');
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('[ERR] [${err.requestOptions.method}] ${err.requestOptions.uri}');
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('[RESP] [${response.requestOptions.method}] ${response.requestOptions.uri}');

    final commonResponse = CommonResponse.fromJson(response.data);
    response.data = commonResponse.data;
    super.onResponse(response, handler);
  }
}