import '../LessonOne/quiz.dart';
class  QuizBrain{
  int _quizNumber=0;
 final List<QuizModel> _quizNumberBank=[

    QuizModel( 'What among the following does an asset do?',
        {
          "Puts money in my pocket":true,
          "Puts more money in my pocket than what it removes":true,
          "Increases in monetary value with time.":true,
          "Removes money from my pocket":false,
          "Removes more money from my pocket than what it puts in":false,
          "Decreases in monetary value with time.":false,
        }),
    QuizModel('A huge reason why many people are not rich is because?',
        {
      'They are lazy':false,
      'They don’t know the difference between an asset and a liability':true,
      'They are unfortunate':false,
      'They didn\’t get any inheritance from their parents.':false,
      'They were not chosen':false,
      'Village people':false,
    }
    ),
    QuizModel( 'Which of the following statements is correct?', {
      "The rich have lots of assets": true,
      'The middle class have lots of liabilities': true,
      'One can be have lots of assets and be broke': false,
      'Money is bad.': false,
      'To be wealthy, acquire a large number of assets ': true,
      'To be broke acquire a large number of liabilities': true
    }),
    QuizModel( 'Examples of what people think are assets, but are liabilities.', {
      "A personal house/apartment":true,
      "A personal car":true,
      "A smartphone":true,
      "A house/apartment that pays you rent":false,
      "A job":false,
      'Personal Gadgets':false,}
    )
  ];

  void nextQuestion() {
    if (_quizNumber < _quizNumberBank.length - 1) {
      _quizNumber++;
    }
  }
  String getQuestionText() {
    return _quizNumberBank[_quizNumber].quiz;
  }
  void previousQuestionText() {
    if (_quizNumber <= _quizNumberBank.length - 1) {
      _quizNumber = _quizNumber - 1;}
    }
  String getAnswerText(){
    return _quizNumberBank[_quizNumber].answer.keys.toList()[_quizNumber];
  }
  String getAnswerText1(){
    return _quizNumberBank[_quizNumber].answer.keys.toList()[1];
  }
  String getAnswerText2(){
    return _quizNumberBank[_quizNumber].answer.keys.toList()[2];
  }
  String getAnswerText3(){
    return _quizNumberBank[_quizNumber].answer.keys.toList()[3];
  }
  String getAnswerText4(){
    return _quizNumberBank[_quizNumber].answer.keys.toList()[4];
  }
  String getAnswerText5(){
    return _quizNumberBank[_quizNumber].answer.keys.toList()[5];
  }
  bool getAnswer() {
    return _quizNumberBank[_quizNumber].answer.entries.toList()[0].value;
  }
  bool getAnswer1() {
    return _quizNumberBank[_quizNumber].answer.entries.toList()[1].value;
  }
  bool getAnswer2() {
    return _quizNumberBank[_quizNumber].answer.entries.toList()[2].value;
  }
  bool getAnswer3() {
    return _quizNumberBank[_quizNumber].answer.entries.toList()[3].value;
  }
  bool getAnswer4() {
    return _quizNumberBank[_quizNumber].answer.entries.toList()[4].value;
  }
  bool getAnswer5() {
    return _quizNumberBank[_quizNumber].answer.entries.toList()[5].value;
  }
  bool isfinished() {
    if (_quizNumber >= _quizNumberBank.length - 1) {
      print('now returning true');
      return true;
    } else {
      return false;
    }
  }
  bool goback() {
    if (_quizNumber <= 0) {
      print('now returning true');
      return true;
    }
    else{
      return false;
    }

  }
  }



