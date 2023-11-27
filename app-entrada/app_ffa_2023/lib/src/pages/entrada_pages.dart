import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';

class EntradaPages extends StatefulWidget {
  const EntradaPages({Key? key}) : super(key: key);

  @override
  State<EntradaPages> createState() => _EntradaPagesState();
}

class _EntradaPagesState extends State<EntradaPages> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late FocusNode _textFieldFocusNode;

  @override
  void initState() {
    super.initState();

    _videoPlayerController =
        VideoPlayerController.asset('assets/video/loop.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
      showControls: false,
    );

    _textFieldFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Chewie(controller: _chewieController),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                color:Colors.cyanAccent[100],
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      focusNode: _textFieldFocusNode,
                      readOnly: true,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Ingresa números',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
