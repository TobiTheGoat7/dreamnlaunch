import 'package:dreamnlaunch/LessonOne/story.dart';
class StoryBrain {
  int _storyNumber = 0;
  final List<Story> _storyBank = [
    Story('Angela had to determine what she needed and give up luxuries she didn\'t need in order to stop completely relying on her day job. Her vacations had to be reasonably priced, her clothes had to be functional, and she didn\'t need a chauffeur when she could drive.\n\ '
        '\nBy reducing these luxuries and focusing on her needs, her income requirements were reduced, making it easier for her to eventually leave her job.\n\ '
        '\nSteve couldn\'t get out of the rat race: his fear of losing his job, his competitive nature, and his desire to be like his peers all conspired against him. Perhaps, he reasoned, he would retire to a small fishing village on some coast and be content once he was done with his career.'
    ),
    Story('Angela, on the other hand, bided her time, making small changes in her life and knowing that happiness is not a distant goal to be attained; it must be attained now.\n\ '
        '\nNow fast forward two years. Angela used her corporate connections to launch her own design studio and school, which she now runs and manages. She is not yet profitable, but she expects to be profitable in a few months.\n\ '
        '\nBy that time, she will have the option of running the business herself or hiring someone else to do so. Angela would essentially have escaped the rat race and would be able to begin living life on her own terms.'
    ),
    Story('This is just one example of what many people face in today\'s world.\n\ '
        '\nUnfortunately, most people will have to work for a living for the majority of their prime years.'
        '\nHowever, you are not required to take this route. It\'s time to take control of your financial future.'
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