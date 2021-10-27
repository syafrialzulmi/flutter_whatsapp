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
      theme: ThemeData(
        primaryColor: Color(0XFF075E55),
        indicatorColor: Color(0XFFFFFFFFFF),
      ),
      home: MyHome(),
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

  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("WhatsApp"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
              ),
              PopupMenuItem(
                child: Text("Linked devices"),
              ),
              PopupMenuItem(
                child: Text("Starred messages"),
              ),
              PopupMenuItem(
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
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  Container(
                    width: width * 0.2,
                    child: Row(
                      children: <Widget>[
                        Tab(
                          text: "CHATS",
                        ),
                        SizedBox(
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
                      children: <Widget>[
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
                    child: Tab(
                      text: "CALLS",
                    ),
                  )
                ],
                controller: _tabController,
                isScrollable: true,
              ),
            ),
            preferredSize: Size.fromHeight(60.0)),
      ),
    );
  }
}
