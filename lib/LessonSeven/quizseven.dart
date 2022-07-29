import 'package:dreamnlaunch/LessonFour/quiz.dart';
class QuizBrain{
int _quizNumber=0;
final List<QuizModel> _quizNumberBank=[
  QuizModel("The following are characteristics of the rat race except?", {
    'No end in sight':false,
    'Continuous hustle and grind':false,
    'More time':true,
    'Hatred for job':false,
    'Extreme work only to get ahead':false},

  ),
  QuizModel('The first step to take to leave the rat race, as shown by Angela is?', {
    'Ask yourself questions':true,
    'Determine if you are in the rat race or not':false,
    'Leave your job':false,
    'Start a business':false,
    'Get a higher paying job':false
  }
  ),
  QuizModel('The next step to take to leave the rat race, as shown by Angela is? ',{
    'Start a business':false,
    'Determine if there are other ways you can earn money':false,
    'Get another job':true,
    'Get a higher paying job':false,
    'Leave your job':false,
  },
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


