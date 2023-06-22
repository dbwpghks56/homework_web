import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homework_web/oembed/model/oembed_model.dart';
import 'package:homework_web/oembed/provider/oembed_provider.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      height: 170,
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            children: [
              Text("oEmbed Test",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white
                ),
              ),
              SizedBox(height: 20,),
              _InputBox()
            ],
          ),
        ),
      ),
    );
  }
}

class _InputBox extends ConsumerWidget {
  const _InputBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String link = "";

    return Container(
      width: MediaQuery.of(context).size.width >= 1220 ? MediaQuery.of(context).size.width/ 2 : MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.insert_link_rounded, color: Colors.grey,),
          const SizedBox(width: 16,),
          Expanded(
            child: TextFormField(
              autofocus: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "ex) https://www.youtube.com/watch? "
              ),
              onChanged: (value) {
                link = value;
              },
            ),
          ),
          const SizedBox(width: 16,),
          SizedBox(
            height: 58.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber
              ),
              onPressed: () async {
                ref.read(oEmbedProvider.notifier).getOEmbed(link);
              },
              child: const Text("확인",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}

