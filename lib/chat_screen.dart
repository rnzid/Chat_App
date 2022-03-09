import 'package:chatbox/chat_messege.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessege> _message = <ChatMessege>[];
  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessege messege = ChatMessege(text: text);
    setState(() {
      _message.insert(0, messege);
    });
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(color: Colors.blue),
      child: Container(
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
              child: IconButton(
                  onPressed: () => _handleSubmitted(_textController.text),
                  icon: Icon(Icons.send)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: ListView.builder(
            itemBuilder: (_, int index) => _message[index],
            padding: const EdgeInsets.all(8.0),
            itemCount: _message.length,
            reverse: true,
          ),
        ),
        const Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
