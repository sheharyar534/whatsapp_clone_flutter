import 'package:flutter/material.dart';
import 'package:whastapp/screens.dart/message.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  var chatoo = [
    "sir arsalan",
    "usman",
    "yosuf",
    "Nvaid",
    "Rashid",
    "mubashir",
    "sheharyar",
    "flutter",
    "ali",
    "adil",
    "usama"
  ];
  var sub = [
    "aj q nah ay ??",
    "acha..!",
    "aslamoaliikum",
    "beta bat suno..",
    "sahi hai ",
    "shery kaha hai ..?",
    "kardia..",
    "seek gaya",
    "ok..",
    "nahi boss..",
    "kaha hai shery???"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatoo.length,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("assets/images/123.png"),
              ),
              title: Text(chatoo[index]),
              subtitle: Text(sub[index]),
              trailing: const Column(
                children: [
                  Text("3:15 PM"),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color.fromARGB(255, 8, 114, 47),
                    child: Text("5"),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Message())));
              },
            );
          })),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 13, 87, 15),
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
