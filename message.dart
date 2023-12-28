import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("back"),
    ));
  }
}
