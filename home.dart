import 'package:flutter/material.dart';
import 'package:whastapp/screens.dart/calls.dart';
import 'package:whastapp/screens.dart/chats.dart';
import 'package:whastapp/screens.dart/status.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
                backgroundColor: const Color.fromARGB(255, 8, 114, 47),
                title: const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text("WhatsApp"),
                ),
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 30),
                    child: Icon(Icons.camera_enhance_outlined),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 15),
                    child: Icon(
                      Icons.search,
                      size: 28,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 15),
                    child: Icon(Icons.more_vert),
                  )
                ])),
        body: Column(children: [
          Container(
            color: const Color.fromARGB(255, 8, 114, 47),
            height: 50,
            child: TabBar(
              // isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 2.5,
              tabs: [
                // Container(
                //   decoration: const BoxDecoration(color: Colors.transparent),
                //   width: 25,
                //   child: const Tab(
                //     child: Icon(Icons.groups_sharp),
                //   ),
                // ),
                Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  width: 80,
                  child: Tab(
                    child: Row(
                      children: [
                        const Text("Chats"),
                        const SizedBox(
                          width: 7,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Center(
                              child: Text(
                            "10",
                            style: TextStyle(
                                color: Color.fromARGB(255, 8, 114, 47)),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  width: 80,
                  child: const Tab(
                    child: Text("Status"),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  width: 80,
                  child: const Tab(
                    child: Text("Calls"),
                  ),
                ),
              ],
            ),
          ),
          const Flexible(
              child: TabBarView(
            children: [Chats(), Status(), CallS()],
          ))
        ]),
      ),
    );
  }
}
