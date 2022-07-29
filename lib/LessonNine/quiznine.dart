import 'package:dreamnlaunch/LessonFour/quiz.dart';
class QuizBrain{
int _quizNumber=0;
final List<QuizModel> _quizNumberBank=[
  QuizModel("Angela delayed gratification by doing which among the following?", {
    'Determining what she needed':true,
    'Giving up luxuries she didn\’t need':true,
    'Quitting her regular job':false,
    'Using only functional clothes':true,
    'Reducing her vacations':true,
    'Driving herself instead of hiring a chaffeur':true
  }
  ),
  QuizModel('What did Angela know that pushed her to leave the rat race?', {
    'That life was too short':false,
    'That happiness is not a distant goal':true,
    'She had suffered a lot':false,
    'That life was too hard':false,
    'That her family needs her help financially':false,
    'She knew the way out of the rat race':false
  }
  ),
  QuizModel('Why couldn’t Steve get out of the rat race?',{
'Fear of losing his job':true,
'His competitive nature':true,
'Desire to be like his peers':true,
'He was ignorant':false,
'He was stubborn':false,
'He didn’t know the way out':false
  }
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


