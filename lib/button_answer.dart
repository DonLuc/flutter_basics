import 'package:flutter/material.dart';

class ButtonAnswer extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  const ButtonAnswer({Key key, this.onPress, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 10,
        left: 80,
        right: 80,
      ),
      child: ElevatedButton(
          onPressed: onPress,
          child: Text(title),
          style: ElevatedButton.styleFrom(
              shadowColor: Colors.black87,
              padding: EdgeInsets.all(20),
              textStyle: TextStyle(fontSize: 20),
              primary: Colors.greenAccent)),
    );
  }
}
