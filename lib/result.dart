import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int extroversion;
  final int agreeableness;
  final int conscientiousness;
  final int neuroticism;
  final int ote;
  final VoidCallback onStart;

  result(
      {required this.extroversion,
      required this.agreeableness,
      required this.conscientiousness,
      required this.neuroticism,
      required this.ote,
      required this.onStart});

  //getter can never receive arguments
  String get resultPhrase {
    var you;
    if (extroversion >= 0 && extroversion <= 10) {
      you = "\nYou prefer solitude and may find social interactions draining.";
    } else if ((extroversion >= 11 && extroversion <= 20)) {
      you =
          "\nYou enjoy spending time alone but can also engage in social situations when needed.";
    } else if ((extroversion >= 21 && extroversion <= 30)) {
      you =
          "\nYou strike a balance between enjoying socializing and valuing your alone time.";
    } else if ((extroversion >= 31 && extroversion <= 40)) {
      you =
          "\nYou are outgoing, energized by social interactions, and often seek out opportunities to connect with others.";
    }
    if (agreeableness >= 0 && agreeableness <= 10) {
      you = you +
          "\n\nYou are straightforward and may prioritize your own interests over others.";
    } else if ((agreeableness >= 11 && agreeableness <= 20)) {
      you = you +
          "\n\nYou are generally cooperative but can be assertive and direct when necessary.";
    } else if ((agreeableness >= 21 && agreeableness <= 30)) {
      you = you +
          "\n\nYou strike a balance between being accommodating and standing up for yourself.";
    } else if ((agreeableness >= 31 && agreeableness <= 40)) {
      you = you +
          "\n\nYou are compassionate, empathetic, and strive to maintain harmony in your relationships.";
    }
    if (conscientiousness >= 0 && conscientiousness <= 10) {
      you = you +
          "\n\nYou prefer spontaneity and may struggle with organization and task completion.";
    } else if ((conscientiousness >= 11 && conscientiousness <= 20)) {
      you = you +
          "\n\nYou have a relaxed approach to tasks and deadlines, but you can still meet responsibilities when necessary.";
    } else if ((conscientiousness >= 21 && conscientiousness <= 30)) {
      you = you +
          "\n\nou strike a balance between being disciplined and flexible in your approach to tasks.";
    } else if ((conscientiousness >= 31 && conscientiousness <= 40)) {
      you = you +
          "\n\nYou are extremely organized, responsible, and committed to achieving your goals.";
    }
    if (neuroticism >= 0 && neuroticism <= 10) {
      you = you +
          "\n\nYou are emotionally resilient and rarely experience negative emotions.";
    } else if ((neuroticism >= 11 && neuroticism <= 20)) {
      you = you +
          "\n\nYou are generally calm and composed, but occasional stressors may affect you.";
    } else if ((neuroticism >= 21 && neuroticism <= 30)) {
      you = you +
          "\n\nYou experience a range of emotions, but you can manage them effectively.";
    } else if ((neuroticism >= 31 && neuroticism <= 40)) {
      you = you +
          "\n\nYou are sensitive to stress and may experience anxiety and mood swings more frequently.";
    }
    if (ote >= 0 && ote <= 10) {
      you = you +
          "\n\nYou prefer familiar routines and tend to avoid trying new things.";
    } else if ((ote >= 11 && ote <= 20)) {
      you = you +
          "\n\nYou are somewhat traditional and may feel more comfortable with familiar ideas and experiences.";
    } else if ((ote >= 21 && ote <= 30)) {
      you = you +
          "\n\nYou strike a balance between being open to new experiences and valuing some predictability in your life.";
    } else if ((ote >= 31 && ote <= 40)) {
      you = you +
          "\n\nYou are highly curious, open-minded, and eager to explore new ideas and possibilities.";
    }

    you = you +
        '\n\n' +
        'Extroversion            :${extroversion}' +
        '\n' +
        'Agreeableness        :${agreeableness}' +
        '\n' +
        'Conscientiousness :${conscientiousness}' +
        '\n' +
        'Neuroticism             :${neuroticism}' +
        '\n' +
        'Openness                 :${ote}' +
        '\n\n' +
        'The Total scores are in the range [ 0 - 40 ].';

    return you;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/12.jpg"), fit: BoxFit.cover),
        ),
        child: // Foreground widget here
            Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(
                resultPhrase,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text('\n'),
              OutlinedButton(
                child: Text('ReStart'),
                //buttonstyle object getting constructed
                /*style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),*/
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  elevation: 10,
                  shadowColor: Colors.amber,
                ),
                //value onpressed wants is a function that returns void
                onPressed: onStart,
                //qanda passed as name (pointer) to be executed when button pressed
              ),
            ]));
  }
}
