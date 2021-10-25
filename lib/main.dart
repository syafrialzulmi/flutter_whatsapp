import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0XFF075E55),
            title: const Text("WhatsApp"),
            actions: const <Widget>[
              // ignore: unnecessary_const
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              // ignore: unnecessary_const
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.more_vert,
                  size: 28,
                ),
              ),
            ],
            bottom: const TabBar(
                indicatorWeight: 3.0,
                indicatorColor: Color(0XFFFFFFFF),
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  ),
                ]),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.camera_alt),
              Icon(Icons.message),
              Icon(Icons.star_outline),
              Icon(Icons.call),
            ],
          ),
        ),
      ),
    );
  }
}
