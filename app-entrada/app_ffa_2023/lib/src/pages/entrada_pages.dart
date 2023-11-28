import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class EntradaPages extends StatefulWidget {
  const EntradaPages({Key? key}) : super(key: key);

  @override
  State<EntradaPages> createState() => _EntradaPagesState();
}

class _EntradaPagesState extends State<EntradaPages> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late FocusNode _textFieldFocusNode;
  final TextEditingController _textFieldController = TextEditingController();

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
    _textFieldController.dispose();
    super.dispose();
  }

  void handleNumericButtonPress(String value) {
    _textFieldController.text += value;
  }

  void handleDeleteButtonPress() {
    String currentText = _textFieldController.text;
    if (currentText.isNotEmpty) {
      _textFieldController.text =
          currentText.substring(0, currentText.length - 1);
    }
  }

  void handleAcceptButtonPress() {
    print('Aceptar presionado');
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: Chewie(controller: _chewieController),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(255, 0, 0, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          _textFieldFocusNode.requestFocus();
                        },
                        child: TextField(
                          focusNode: _textFieldFocusNode,
                          controller: _textFieldController,
                          readOnly: true,
                          onTap: () {
                            _textFieldFocusNode.requestFocus();
                          },
                          style: const TextStyle(color: Colors.black, fontSize: 30.0),
                          decoration: InputDecoration(
                            labelText: 'Ingrese su código de acceso',
                           // border: const OutlineInputBorder(),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: IconButton(
                              onPressed: () {
                                _textFieldController.clear();
                              },
                              icon: const Icon(Icons.clear),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('1'),
                              buildKeyboardButton('2'),
                              buildKeyboardButton('3'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('4'),
                              buildKeyboardButton('5'),
                              buildKeyboardButton('6'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('7'),
                              buildKeyboardButton('8'),
                              buildKeyboardButton('9'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildDeleteButton(),
                              buildKeyboardButton('0'),
                              buildAcceptButton(),
                            ],
                          ),
                        ],
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
  /*Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: Chewie(controller: _chewieController),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(255, 0, 0, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          _textFieldFocusNode.requestFocus();
                        },
                        child: TextField(
                          focusNode: _textFieldFocusNode,
                          controller: _textFieldController,
                          readOnly: true,
                          onTap: () {
                            _textFieldFocusNode.requestFocus();
                          },
                          style: const TextStyle(color: Colors.black),
                          decoration:  InputDecoration(
                            labelText: 'Ingrese su código de acceso',
                            border: const OutlineInputBorder(),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: IconButton( 
                              onPressed: () {
                                  _textFieldController.clear();
                                },
                              icon: const Icon(Icons.clear), 
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('1'),
                              buildKeyboardButton('2'),
                              buildKeyboardButton('3'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('4'),
                              buildKeyboardButton('5'),
                              buildKeyboardButton('6'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('7'),
                              buildKeyboardButton('8'),
                              buildKeyboardButton('9'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildDeleteButton(),
                              buildKeyboardButton('0'),
                              buildAcceptButton(),
                            ],
                          ),
                        ],
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
*/
  Widget buildKeyboardButton(String buttonText) {
    return SizedBox(
      width: 90.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          handleNumericButtonPress(buttonText);
        },
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }

  Widget buildDeleteButton() {
    return SizedBox(
      width: 90.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          handleDeleteButtonPress();
        },
        child: Text(
          "x",
          style: TextStyle(fontSize: 50.0),
        )//Icon(Icons.no_backpack, size: 50.0),
      ),
    );
  }

  Widget buildAcceptButton() {
    return SizedBox(
      width: 90.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          handleAcceptButtonPress();
        },
        child: Icon(Icons.check, size: 50.0),
      ),
    );
  }
}
