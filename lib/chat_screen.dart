import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  void _handleSubmitted(String text) {
    _textController.clear();
  }

  Widget _textComposerWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: "Send Messege"),
              controller: _textController,
              onSubmitted: _handleSubmitted,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textComposerWidget();
  }
}
