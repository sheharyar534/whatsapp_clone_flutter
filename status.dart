import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  var name = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("assets/images/123.png"),
              ),
              title: Text(name[index]),
              subtitle: const Row(
                children: [
                  Text("yesterday"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("9:43 Pm")
                ],
              ),
            );
          }),
      floatingActionButton: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 100,
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 181, 201, 188),
              child: const Icon(
                Icons.create,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
              bottom: 30,
              right: 0,
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 8, 114, 47),
                child: const Icon(Icons.camera_alt),
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
