import 'package:json_annotation/json_annotation.dart';

part 'common_response.g.dart';

@JsonSerializable()
class CommonResponse<T>{
  final bool success;
  final String status;
  final String? message;
  final Map<String, dynamic> data;

  CommonResponse({
    required this.success,
    required this.status,
    required this.message,
    required this.data
  });

  factory CommonResponse.fromJson(Map<String, dynamic> json) => _$CommonResponseFromJson(json);
}