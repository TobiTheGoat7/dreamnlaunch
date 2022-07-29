import 'package:dreamnlaunch/LessonFour/quiz.dart';
class QuizBrain{
int _quizNumber=0;
final List<QuizModel> _quizNumberBank=[
  QuizModel("The 3rd step to take to leave the rat race, as shown by Angela is? ", {
'Start a business':false,
'Find something you are genuinely interested in':true,
'Start a side gig':false,
}
  ),
  QuizModel('After finding out her what interest was, she thought of?', {
    'Making money':false,
    'Ways to create a source of income from her interest':true,
    'Doing more painting':false,}
  ),
  QuizModel('She was getting out of the rat race by?',{
    'Doing more with her time':false,
    'Doing an activity that wasn’t geared towards getting ahead':false,
    'Making more money':true,}
  ),
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
    _quizNumber = _quizNumber - 1;
  }
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
bool getAnswer() {
  return _quizNumberBank[_quizNumber].answer.entries.toList()[0].value;
}
bool getAnswer1() {
  return _quizNumberBank[_quizNumber].answer.entries.toList()[1].value;
}
bool getAnswer2() {
  return _quizNumberBank[_quizNumber].answer.entries.toList()[2].value;
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
bool isfinished() {
  if (_quizNumber >= _quizNumberBank.length - 1) {
    print('now returning true');
    return true;
  } else {
    return false;
  }
}
}


