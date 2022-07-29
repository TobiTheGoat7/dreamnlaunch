import 'package:dreamnlaunch/LessonOne/story.dart';
class StoryBrain {
  int _storyNumber = 0;
  final List<Story> _storyBank = [
    Story('How do you make a living from drawing and painting? Angela had to ask herself this question as she pursued her interest. As a solution, she decided to work longer hours at home.\n\ '
        '\nWorking more while attempting to escape the rat race does sound a little insane. Angela, on the other hand, found relaxation in drawing and painting.'
        '\nShe felt good just doing something she was interested in and not having to rely on it to make a living.'
    ),
    Story('As a result, even though she worked a ridiculously long day job, she looked forward to winding down at the end of it.\n\ '
        '\nSimultaneously, she investigated the various ways she could turn this passion into a source of income.\n\ '
        '\nAngela was eventually getting out of the rat race by mixing up her day with an activity that wasn\'t geared toward making money or getting ahead.'
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