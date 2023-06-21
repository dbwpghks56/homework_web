import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_web/oembed/model/oembed_model.dart';
import 'package:homework_web/oembed/provider/oembed_provider.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class BottomScreen extends ConsumerWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(oEmbedProvider);

    if (state is OEmbedModelNone) {
      return const Text(
          "아직 데이터가 없습니다."
      );
    }

    if (state is OEmbedModelLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    final data = state as OEmbedModel;
    final jsonData = data.toJson();
    final jsonDataList = jsonData.entries.toList();
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return jsonDataList[index].value != null ? Row(
              children: [
                SizedBox(
                  width: 220,
                  child: Text(
                      jsonDataList[index].key.toString()
                  ),
                ),
                if (jsonData["html"] != jsonDataList[index].value &&
                    jsonData["thumbnail_url"] != jsonDataList[index].value)
                  Expanded(
                    child: Text(
                        jsonDataList[index].value.toString()
                    ),
                  ),
                if (jsonData["html"] == jsonDataList[index].value)
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                            jsonDataList[index].value.toString()
                        ),
                        SizedBox(height: 8.0,),
                        HtmlWidget(
                            jsonData["html"].toString()
                        )
                      ],
                    ),
                  ),
                if (jsonData["thumbnail_url"] == jsonDataList[index].value)
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                            jsonDataList[index].value.toString()
                        ),
                        SizedBox(height: 8.0,),
                        Image.network(
                            jsonData["thumbnail_url"].toString(),
                        )
                      ],
                    ),
                  ),
              ],
            ): Container();
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.0,);
          },
          itemCount: jsonData.entries.length)
      ),
    );
  }
}









