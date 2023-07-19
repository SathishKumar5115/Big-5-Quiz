import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final VoidCallback? onPress;
  final String at;
  //voidcallback get a function that does not receive any parameter and does not return anything

  answer(this.onPress, this.at);
  /*We can use the private method only from a class instance which got this method as one of the passed parameters.If you would try to call the method without this explicit permisson you would not succeed. */
  @override
  Widget build(BuildContext context) {
    Color buttonColor, textColor;

    if (at == 'Agree') {
      buttonColor = Colors.green;
      textColor = Colors.white;
    } else if (at == 'Slightly Agree') {
      buttonColor = Colors.lightGreen;
      textColor = Colors.white;
    } else if (at == 'Neutral') {
      buttonColor = Colors.yellow;
      textColor = Colors.black;
    } else if (at == 'Slightly Disagree') {
      buttonColor = Colors.orange;
      textColor = Colors.white;
    } else {
      buttonColor = Colors.red;
      textColor = Colors.white;
    }
    return Container(
      width: double.infinity,
      /**more than one constructor which gives different objects with special configurations*/
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(at),
        //buttonstyle object getting constructed
        /*style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange)),*/
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: textColor,
        ),
        //value onpressed wants is a function that returns void
        onPressed: onPress,
        //qanda passed as name (pointer) to be executed when button pressed
      ),
    );
  }
}
