import 'package:dreamnlaunch/LessonOne/story.dart';
class StoryBrain {
  int _storyNumber = 0;
  final List<Story> _storyBank = [
    Story('That night, when she got home, Angela decided that she would examine if there was a different way to do things.\n\ '
        '\nWas there a point to advancing her career, day in day out? She had come to absolutely hate her job and its repetitive nature.\n\ '
        '\nAfter reading a couple books and going through articles on some websites, she decided to see if she could improve the quality of her life by getting out of the rat race.\n\ '
        '\nShe had to determine if she was in the rat race. There was no way she would get out of something she hadn’t identified to be part of.'
    ),
    Story('As a result, she posed three fundamental questions to herself: Is there an end in sight? No.\n\ '
        '\nHer career advancement was a continuous and life-long process. Was her career and life in general marked by rivalry?\n\ '
        '\nShe had to work extremely hard; it was the only way she could get ahead. Was it distinguished by comparison? Not much, but there was enough to be concerned about. '
    ),
    Story('Angela\'s next step was to determine whether there were any other ways she  earn couldmoney. The rat race was her bread and butter, and by leaving it, she needed to find another source of income.\n\ '
        '\nShe realized after brainstorming that she lacked any other skills besides numbers. The only thing she enjoyed doing was drawing and painting on occasion.'
    ),
  ];
  String getlessonText() {
    return _storyBank[_storyNumber].lessonText;
  }

  void nextLessonText() {
    if (_storyNumber < _storyBank.length - 1) {
      _storyNumber++;
    }
  }

  void previousLessonText() {
    if (_storyNumber <= _storyBank.length - 1) {
      _storyNumber = _storyNumber - 1;
    }
  }


}