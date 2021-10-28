import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => _buildChat(),
      separatorBuilder: (context, index) => Divider(
        indent: 60.0,
      ),
      itemCount: 12,
    );
  }

  _buildChat() {
    return Theme(
      data: ThemeData(),
      child: ListTile(
        leading: CircleAvatar(
          radius: 32.0,
          backgroundColor: Color(0XFFDDDDDD),
          child: Icon(
            Icons.person,
            color: Colors.black,
            size: 38,
          ),
        ),
        title: Text(
          "User 1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "+62 852-7864-8321: Hai, apa kabar baik? Alhamdulillah",
          maxLines: 1,
        ),
        trailing: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "9.00 PM",
                style: TextStyle(fontSize: 12.0),
              ),
              SizedBox(
                height: 3.0,
              ),
              CircleAvatar(
                child: Text(
                  "10",
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                radius: 11.0,
                backgroundColor: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
