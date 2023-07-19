import 'package:flutter/material.dart';

class question extends StatelessWidget {
  final String qt;

  question(this.qt);

  @override
  Widget build(BuildContext context) {
    //using container since text only allocates space as much the words in them need
    return Container(
      width: double.infinity,
      //EdgeInsets is a class with multiple contructors to create object in different variance
      margin: EdgeInsets.all(10),
      color: Color.fromARGB(255, 161, 153, 184),
      child: Text(
        qt,
        style: TextStyle(
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
