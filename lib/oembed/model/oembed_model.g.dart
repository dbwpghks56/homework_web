// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oembed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OEmbedModel _$OEmbedModelFromJson(Map<String, dynamic> json) => OEmbedModel(
      title: json['title'] as String?,
      type: json['type'] as String?,
      version: (json['version'] as num?)?.toDouble(),
      provider_name: json['provider_name'] as String?,
      provider_url: json['provider_url'] as String?,
      author_name: json['author_name'] as String?,
      author_url: json['author_url'] as String?,
      is_plus: json['is_plus'] as int?,
      html: json['html'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      duration: json['duration'] as int?,
      description: json['description'] as String?,
      thumbnail_url: json['thumbnail_url'] as String?,
      thumbnail_width: json['thumbnail_width'] as int?,
      thumbnail_height: json['thumbnail_height'] as int?,
      thumbnail_url_with_play_button:
          json['thumbnail_url_with_play_button'] as String?,
      upload_date: json['upload_date'] as String?,
      cache_age: json['cache_age'] as int?,
      url: json['url'] as String?,
      video_id: json['video_id'] as int?,
    );

Map<String, dynamic> _$OEmbedModelToJson(OEmbedModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'version': instance.version,
      'provider_name': instance.provider_name,
      'provider_url': instance.provider_url,
      'author_name': instance.author_name,
      'author_url': instance.author_url,
      'is_plus': instance.is_plus,
      'html': instance.html,
      'width': instance.width,
      'height': instance.height,
      'duration': instance.duration,
      'description': instance.description,
      'thumbnail_url': instance.thumbnail_url,
      'thumbnail_width': instance.thumbnail_width,
      'thumbnail_height': instance.thumbnail_height,
      'thumbnail_url_with_play_button': instance.thumbnail_url_with_play_button,
      'upload_date': instance.upload_date,
      'video_id': instance.video_id,
      'cache_age': instance.cache_age,
      'url': instance.url,
    };
