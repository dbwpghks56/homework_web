import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_web/common/dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../common/const/data.dart';
import '../model/oembed_model.dart';

part 'oembed_repository.g.dart';

final oEmbedRepositoryProvider = Provider<OEmbedRepository>((ref) {
  final dio = ref.watch(dioProvider);

  return OEmbedRepository(dio, baseUrl: "http://${ip}/oEmbed");
});

@RestApi()
abstract class OEmbedRepository {
  factory OEmbedRepository(Dio dio, {String baseUrl}) = _OEmbedRepository;

  @GET("/")
  Future<OEmbedModel> getOEmbed(
    @Query("url") String? url
  );
}