import 'package:dreamnlaunch/LessonFour/quiz.dart';
class QuizBrain{
int _quizNumber=0;
final List<QuizModel> _quizNumberBank=[
  QuizModel("Financial literacy is the understanding of personal finance and the ________?", {
    'Economy':false,
    'Ability to make money work for you':true,
    'Way to invest':false,
    'Way to be financially free':false},
  ),
  QuizModel('Lack of financial literacy causes which of the following?', {
  'Problems':false,
  'Bad financial decisions':true,
  'Poverty':true,
  'Bad luck' :false
  }
  ),
  QuizModel('When should you get financial education? ',{
    'Childhood':false,'When single':false,
        'Throughout one’s life':true,
        ' When married':false
  }

  ),
  QuizModel('Which is more important: saving or spending smartly? ',{
    'Both':true,
        'Saving':false,
        'Spending smartly':false,
        ' Neither is important':false,
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


