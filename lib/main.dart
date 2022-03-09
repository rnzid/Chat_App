import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(ChatBox());

class ChatBox extends StatelessWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ChatBox",
      home: HomePage(),
    );
  }
}
