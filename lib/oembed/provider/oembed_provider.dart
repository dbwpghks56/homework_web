import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_web/oembed/model/oembed_model.dart';
import 'package:homework_web/oembed/repository/oembed_repository.dart';

final oEmbedProvider = StateNotifierProvider<OEmbedStateNotifier, OEmbedModelBase?>((ref) {
  final oEmbedRepository = ref.watch(oEmbedRepositoryProvider);

  return OEmbedStateNotifier(oEmbedRepository: oEmbedRepository);
});

class OEmbedStateNotifier extends StateNotifier<OEmbedModelBase?> {
  final OEmbedRepository oEmbedRepository;

  OEmbedStateNotifier({
    required this.oEmbedRepository
  }) :super(null);

  Future<OEmbedModelBase> getOEmbed(String url) async {
    final resp = await oEmbedRepository.getOEmbed(url);

    state = resp;
    print("Df ${state}");
    return resp;
  }

}