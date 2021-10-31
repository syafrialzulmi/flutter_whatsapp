import 'package:flutter/material.dart';

import 'calls.dart';
import 'camera.dart';
import 'chat.dart';
import 'status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0XFF075E55),
        indicatorColor: const Color(0xffffffff),
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  var width;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("WhatsApp"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                child: Text("New Group"),
              ),
              const PopupMenuItem(
                child: Text("New broadcast"),
              ),
              const PopupMenuItem(
                child: Text("Linked devices"),
              ),
              const PopupMenuItem(
                child: Text("Starred messages"),
              ),
              const PopupMenuItem(
                child: Text("Settings"),
              ),
            ];
          })
        ],
        bottom: PreferredSize(
            child: Container(
              child: TabBar(
                tabs: [
                  Container(
                    width: 30,
                    child: const Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  Container(
                    width: width * 0.2,
                    child: Row(
                      children: <Widget>[
                        const Tab(
                          text: "CHATS",
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Tab(
                          icon: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context).primaryColor),
                            ),
                            radius: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.2,
                    child: Row(
                      children: const <Widget>[
                        Tab(
                          text: "STATUS",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Tab(
                          child: Icon(
                            Icons.brightness_1,
                            size: 9,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.2,
                    child: const Tab(
                      text: "CALLS",
                    ),
                  )
                ],
                controller: _tabController,
                isScrollable: true,
              ),
            ),
            preferredSize: const Size.fromHeight(60.0)),
      ),
      body: TabBarView(
        children: const [Camera(), Chat(), Status(), Calls()],
        controller: _tabController,
      ),
    );
  }
}
