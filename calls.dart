import 'package:flutter/material.dart';

class CallS extends StatefulWidget {
  const CallS({super.key});

  @override
  State<CallS> createState() => _CallSState();
}

class _CallSState extends State<CallS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          // Wrap your Column with a SingleChildScrollView
          children: [
            Column(
              children: [
                const ListTile(
                  title: Text("Flutter"),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_received,
                        size: 15,
                      ),
                      Text("30 minutes ago")
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/123.png"),
                  ),
                  trailing: Icon(Icons.call),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  // Remove Expanded and place the ListView.builder directly
                  itemCount: 20,
                  shrinkWrap:
                      true, // Important for proper ListView inside SingleChildScrollView
                  itemBuilder: (context, index) {
                    return const ListTile(
                      title: Text("Flutter"),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.call_received,
                            size: 15,
                          ),
                          Text("30 minutes ago")
                        ],
                      ),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/123.png"),
                      ),
                      trailing: Icon(Icons.call),
                    );
                  },
                ),
              ],
            ),
          ]),
    );
  }
}
