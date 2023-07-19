import 'package:flutter/material.dart';

/*import './question.dart';
import './answer.dart';*/

import 'home.dart';
import 'quiz.dart';
import 'result.dart';

/**analysis_options.yaml has ignore_for_file:     prefer_const_constructors to prevent error due to const.
 * has built in widgets of material theming.
 * import to get dependencies not present in project folder.*/

void main() {
  /**normal function in material.dart
   * () to pass it as object, otherwise passed as type
   * run app takes widget tree and draws it on the screen i.e, call the build method*/
  runApp(MyApp());
}

/**void main() => runApp(MyApp());
 * can be used when functions have only one line of code.
 * it also gets returned automatically.*/

class MyApp extends StatefulWidget {
  //class wide variable is called property
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

/**state is a generic class
 * state class does not gets recreated when
 * <> this state belong to myapp class
 * _(leading underscore) changes public class to private class*/
class _MyAppState extends State<MyApp> {
  static const _questions = [
    {'qt': 'I Am the life of the party.'},
    {'qt': "I Feel little concern for others."},
    {'qt': "I Am always prepared."},
    {'qt': "I Get stressed out easily."},
    {'qt': "I Have a rich vocabulary."},
    {'qt': "I Don't talk a lot."},
    {'qt': "I Am interested in people."},
    {'qt': "I Leave my belongings around."},
    {'qt': "I Am relaxed most of the time."},
    {'qt': "I Have difficulty understanding abstract ideas."},
    {'qt': "I Feel comfortable around people."},
    {'qt': "I Insult people."},
    {'qt': "I Pay attention to details."},
    {'qt': "I Worry about things."},
    {'qt': "I Have a vivid imagination."},
    {'qt': "I Keep in the background."},
    {'qt': "I Sympathize with others' feelings."},
    {'qt': "I Make a mess of things."},
    {'qt': "I Seldom feel blue."},
    {'qt': "I Am not interested in abstract ideas."},
    {'qt': "I Start conversations."},
    {'qt': "I Am not interested in other people's problems."},
    {'qt': "I Get chores done right away."},
    {'qt': "I Am easily disturbed."},
    {'qt': "I Have excellent ideas."},
    {'qt': "I Have little to say."},
    {'qt': "I Have a soft heart."},
    {'qt': "I Often forget to put things back in their proper place."},
    {'qt': "I Get upset easily."},
    {'qt': "I Do not have a good imagination."},
    {'qt': "I Talk to a lot of different people at parties."},
    {'qt': "I Am not really interested in others."},
    {'qt': "I Like order."},
    {'qt': "I Change my mood a lot."},
    {'qt': "I Am quick to understand things."},
    {'qt': "I Don't like to draw attention to myself."},
    {'qt': "I Take time out for others."},
    {'qt': "I Shirk my duties."},
    {'qt': "I Have frequent mood swings."},
    {'qt': "I Use difficult words."},
    {'qt': "I Don't mind being the center of attention."},
    {'qt': "I Feel others' emotions."},
    {'qt': "I Follow a schedule."},
    {'qt': "I Get irritated easily."},
    {'qt': "I Spend time reflecting on things."},
    {'qt': "I Am quiet around strangers."},
    {'qt': "I Make people feel at ease."},
    {'qt': "I Am exacting in my work."},
    {'qt': "I Often feel blue."},
    {'qt': "I Am full of ideas."},
  ];

  static const _answers = [
    {'a': 'Disagree', 's': 1},
    {'a': 'Slightly Disagree', 's': 2},
    {'a': 'Neutral', 's': 3},
    {'a': 'Slightly Agree', 's': 4},
    {'a': 'Agree', 's': 5}
  ];

  var _questionIndex = 0;
  var _home = 0;
  var _extroversion = 20;
  var _agreeableness = 14;
  var _conscientiousness = 14;
  var _neuroticism = 38;
  var _ote = 8;

  //my implementation
  /*void _qanda() {
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    } else if (_questionIndex >= questions.length - 1) {
      setState(() {
        _questionIndex = 0;
      });
      print(_questionIndex);
    }
  }*/
  void _start() {
    setState(() {
      _home = _home + 1;
    });
  }

  void _restart() {
    setState(() {
      _home = 0;
      _questionIndex = 0;
      _extroversion = 20;
      _agreeableness = 14;
      _conscientiousness = 14;
      _neuroticism = 38;
      _ote = 8;
    });
  }

  void _qanda(int score, int inde) {
    int ind = inde + 1;
    if (ind % 5 == 1) {
      if (ind % 2 == 0) {
        _extroversion = _extroversion - score;
      } else if (ind % 2 != 0) {
        _extroversion = _extroversion + score;
      }
    } else if (ind % 5 == 2) {
      if (ind % 2 == 0 && ind != 42) {
        _agreeableness = _agreeableness - score;
      } else if (ind % 2 != 0 || ind == 42) {
        _agreeableness = _agreeableness + score;
      }
    } else if (ind % 5 == 3) {
      if (ind % 2 == 0 && ind != 48) {
        _conscientiousness = _conscientiousness - score;
      } else if (ind % 2 != 0 || ind == 48) {
        _conscientiousness = _conscientiousness + score;
      }
    } else if (ind % 5 == 4) {
      if (ind != 9 && ind != 19) {
        _neuroticism = _neuroticism - score;
      } else if (ind == 9 || ind == 19) {
        _neuroticism = _neuroticism + score;
      }
    } else if (ind % 5 == 0) {
      if (ind == 10 || ind == 20 || ind == 30) {
        _ote = _ote - score;
      } else if (ind != 10 || ind != 20 || ind != 30) {
        _ote = _ote + score;
      }
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //print(_questions[_questionIndex]);
  }

  /*Overriding is an object-oriented programming feature that enables a child class to provide different implementation for a method that is already defined and/or implemented in its parent class or one of its parent classes. */
  @override

  /**BuildContext is a locator that is used to track each widget in a tree and locate them and their position in the tree.
   * The BuildContext of each widget is passed to their build method. 
   * Remember that the build method returns the widget tree a widget renders. 
   * BuildContext of each widget is passed to their build method.*/
  Widget build(BuildContext context) {
    /**Final if value doesnt change from the point of time when the program runs. At run time the final value gets locked in but unclear in compile time. Final : Run time constant value.
     * Final can be initialised with values.
     * const : compile time constant (value fixed in compile time) which also means runtime constant
     * const can also be added in front of value. then the variable can be assigned new value.
     * dart stores the addresses of the values in the variable
     */

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: /*const */ Text('Big FIVE Personality Test'),
            backgroundColor: Colors.black,
          ),
          body: (_home > 0)
              ? ((_questionIndex < _questions.length
                  ? quiz(
                      questions: _questions,
                      qanda: _qanda,
                      answers: _answers,
                      questionIndex: _questionIndex)
                  : result(
                      extroversion: _extroversion,
                      agreeableness: _agreeableness,
                      conscientiousness: _conscientiousness,
                      neuroticism: _neuroticism,
                      ote: _ote,
                      onStart: _restart,
                    )))
              : home(_start)),
      debugShowCheckedModeBanner: false,
    );
  }
}
