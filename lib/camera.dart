import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(iconTheme: IconThemeData(color: Colors.white)),
      child: Stack(
        alignment: Alignment(0, 1),
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.keyboard_arrow_up),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(
                      20,
                      (index) => Container(
                        color: Colors.redAccent,
                        width: 70,
                        margin: EdgeInsets.all(4.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(onPressed: () {}, icon: Icon(Icons.flash_off)),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: ShapeDecoration(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0))),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
                  ],
                ),
                SizedBox(
                  width: 3.0,
                ),
                Container(
                  height: 30,
                  color: Colors.black,
                  child: Align(
                    child: Text(
                      "Hold for video, tap for photo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
