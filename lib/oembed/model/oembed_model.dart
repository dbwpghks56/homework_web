import 'package:json_annotation/json_annotation.dart';

part 'oembed_model.g.dart';

abstract class OEmbedModelBase{}

class OEmbedModelError extends OEmbedModelBase{
  final String message;

  OEmbedModelError({required this.message});
}
class OEmbedModelNone extends OEmbedModelBase {}
class OEmbedModelLoading extends OEmbedModelBase {}

@JsonSerializable()
class OEmbedModel extends OEmbedModelBase {
  final String? title;
  final String? type;
  final double? version;
  final String? provider_name;
  final String? provider_url;
  final String? author_name ;
  final String? author_url;
  final int? is_plus;
  final String? html;
  final dynamic width;
  final dynamic height;
  final int? duration;
  final String? description;
  final String? thumbnail_url;
  final dynamic thumbnail_width;
  final dynamic thumbnail_height;
  final String? thumbnail_url_with_play_button;
  final String? upload_date;
  final int? video_id;
  final int? cache_age;
  final String? url;
  
  OEmbedModel({
    this.title,
    this.type,
    this.version,
    this.provider_name,
    this.provider_url,
    this.author_name,
    this.author_url,
    this.is_plus,
    this.html,
    this.width,
    this.height,
    this.duration,
    this.description,
    this.thumbnail_url,
    this.thumbnail_width,
    this.thumbnail_height,
    this.thumbnail_url_with_play_button,
    this.upload_date,
    this.cache_age,
    this.url,
    this.video_id
  });

  factory OEmbedModel.fromJson(Map<String, dynamic> json) => _$OEmbedModelFromJson(json);
  Map<String, dynamic> toJson() => _$OEmbedModelToJson(this);
}










