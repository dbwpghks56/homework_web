// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonResponse<T> _$CommonResponseFromJson<T>(Map<String, dynamic> json) =>
    CommonResponse<T>(
      success: json['success'] as bool,
      status: json['status'] as String,
      message: json['message'] as String?,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$CommonResponseToJson<T>(CommonResponse<T> instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
