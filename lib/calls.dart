import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildCallsItem("assets/images/user1.jpg", "Tiffany Nisa Arviyani",
              "Today, 6:05 AM", true, false),
          _buildCallsItem("assets/images/default.jpg", "+62 831 1234-5678",
              "Today, 6:05 AM", true, false),
          _buildCallsItem("assets/images/user3.jpg", "Sastro Meong",
              "October 4, 11:03 PM", false, true),
          _buildCallsItem("assets/images/user4.jpg", "Johny",
              "12/7/20, 11:03 PM", true, true),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_call),
        backgroundColor: Colors.green,
      ),
    );
  }

  _buildCallsItem(photo, name, time, isReceived, isCall) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: const Color(0XFFDDDDDD),
        backgroundImage: AssetImage(photo),
        // child: Image.asset(
        //   photo,
        //   fit: BoxFit.fill,
        // ),
        // child: Icon(
        //   Icons.person,
        //   color: Colors.black,
        //   size: 38,
        // ),
      ),
      title: Text(name),
      subtitle: Row(
        children: <Widget>[
          Icon(
            Icons.call_received,
            size: 23.0,
            color: isReceived ? Colors.green : Colors.red,
          ),
          const SizedBox(
            width: 3.0,
          ),
          Text(
            time,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          isCall ? Icons.call : Icons.videocam,
          color: Colors.green,
          size: 28.0,
        ),
        onPressed: () {},
      ),
    );
  }
}
