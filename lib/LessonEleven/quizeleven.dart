import 'package:dreamnlaunch/LessonFour/quiz.dart';
class QuizBrain{
int _quizNumber=0;
final List<QuizModel> _quizNumberBank=[
  QuizModel("Which of these is correct?", {
'Being rich varies from country to country':true,
'Being rich varies from person to person':true,
'What it means to be rich is universal to everyone':false,


    }
  ),
  QuizModel('Being rich is more temporary than being wealthy.', {
    'Yes':true,
    'No':false,
    'Maybe':false,}
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


