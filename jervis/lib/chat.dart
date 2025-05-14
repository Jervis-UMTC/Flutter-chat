import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> _messages = [];

  TextEditingController _controller = TextEditingController();

  void _sendMessage (){
    if (_controller.text.isNotEmpty){
      setState(() {
        _messages.add(_controller.text);
        _controller.clear;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(_messages[index]));
                  },
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Type your message",
                      ),
                    ),
                  ),

                  IconButton(onPressed: _sendMessage, icon: Icon(Icons.send)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
