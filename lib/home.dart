import 'package:flutter/material.dart';

class home extends StatelessWidget {
  final VoidCallback onStart;

  home(this.onStart);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/home.png"), fit: BoxFit.cover),
        ),
        child: Center(
            child: Column(children: [
          Text(
            "\nThe Big Five personality test is a comprehensive personality inventory based on decades of psychological research. The Big Five personality traits : (O C E A N)\n\nOpenness - How open a person is to new ideas and experiences.\n\nConscientiousness - How goal-directed, persistent, and organized a person is.\n\nExtraversion - How much a person is energized by the outside world.\n\nAgreeableness - How much a person puts others' interests and needs ahead of their own.\n\nNeuroticism - How sensitive a person is to stress and negative emotional triggers.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('\n'),
          Text('\n'),
          ElevatedButton(
            child: Text('Start'),
            //buttonstyle object getting constructed
            /*style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),*/
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
            ),
            //value onpressed wants is a function that returns void
            onPressed: onStart,
            //qanda passed as name (pointer) to be executed when button pressed
          ),
        ])));
  }
}
