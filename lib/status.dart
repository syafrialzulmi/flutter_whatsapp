import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildMyStatus("My Status", "Today, 8.30"),
          _buildText("Recent updates"),
          _buildMyStatus("User 2", "3.30 minutes ago"),
          _buildMyStatus("User 4", "5 minutes ago"),
          _buildMyStatus("User 2", "3.30 minutes ago"),
          _buildMyStatus("User 2", "3.30 minutes ago"),
          _buildMyStatus("User 2", "3.30 minutes ago"),
          _buildText("Viewed updates"),
          _buildMyStatus("User 3", "Yesterday 10:20 pn"),
          _buildMyStatus("User 3", "Yesterday 10:20 pn"),
          _buildMyStatus("User 3", "Yesterday 10:20 pn"),
          _buildMyStatus("User 3", "Yesterday 10:20 pn")
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.edit,
              color: Colors.blueGrey,
              size: 30,
            ),
            mini: true,
            backgroundColor: Color(0XFFFFFFFF),
          ),
          SizedBox(
            height: 15.0,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_enhance),
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }

  _buildText(text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _buildMyStatus(title, time) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 3.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 26.0,
                      backgroundColor: Color(0XFFDDDDDD),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 38,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      time,
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
