import 'package:dreamnlaunch/LessonOne/story.dart';
class StoryBrain {
  int _storyNumber = 0;
  final List<Story> _storyBank = [
    Story('The rat race is defined by Wikipedia as \"an endless, self-defeating, or pointless pursuit.\" \n\ '
        '\n\"It is typically characterized by a high level of competitiveness and comparison.\" \n\ '
        '\At work or in business, the competition to get ahead of others is usually unending. Your peers change when you defeat them and get out of the cubicle.'
    ),
    Story(
      'You and your new colleagues (who also own offices like you) are all vying for the corner office.\n\ '
          '\nYou win again, and this time you get the corner office. The stakes are then raised, and you look up at the ceiling.\n\ '
          '\nThis competition continues all the way to the top floor, where the board is located. The rat race is a journey of competition with no end in sight.'
    ),
    Story(
      'The rat race begins after you graduate from university. You get your first job, which pays well enough.\n\ '
          '\nIf you\'re a big dreamer, you might want to buy a 72-inch plasma TV or a 152-inch plasma TV at first.\n\ '
          '\nAs a result, you go out and buy a television. The next item on the wish list could be a car.'
    ),
    Story(
      'So, while you\'re waiting for your dream car, you get yourself a working car. You put in more effort at work, and as a result, you get a promotion and a pay raise. This means you can now afford a slightly more expensive and opulent home. \n\ '
        '\nIt never ends: having a dream, working hard to make that dream a reality, and then moving on to the next major goal.'
    ),
    Story(
      'I\'d like you to meet Steve, Angela and their friends, Charles and Julie, in order to help us gain some perspective.\n\ '
          '\nSteve and Angela were in the same class in college. It\'s no surprise that they ended up in the same business class because they\'ve both enjoyed playing with numbers since, they were children.\n\ '
          '\nWhen academics became too much, college became a combination of intense weekend partying and a couple of all-nighters.\n\ '
          '\nThey didn\'t put in much effort in class, but they finished and received respectable grades.'
    ),
    Story(
      'Of course, they agreed to keep in touch on a regular basis, which they did by holding monthly scrabble sessions, as most college friends do.\n\ '
          '\nThey used to get together at least once a month to play some games and talk about their college days.\n\ '
          '\nChris, on the other hand, stopped going after a few months because his girlfriend became pregnant. Chris had to work extra hours due to the impending birth of the child in order to cover the projected higher expenses. Children do not come cheap. '
    ),
    Story(
      'Julie was also promoted and had to relocate to another city.\n\ '
          '\nSoon after, Steve found a girlfriend, and after a year of dating, he proposed to her and married her. He put in a lot of consistent effort at work, which resulted in a promotion.\n\ '
          '\nSteve used to own an old beat-up Toyota corolla, but since he couldn\'t drive around in it with his new "Department Head" title at work, he bought a new one and sold the old one.'
    ),
    Story(
      'His wife became pregnant, and they had to relocate to a larger home in order to prepare for the new arrival.\n\ '
          '\nThe monthly scrabble game had long passed him by, as he was now immersed in the game of life.\n\ '
          '\nHe got a mortgage, a second car, a college fund for his children, and he kept telling himself that he needed to start investing in stocks.\n\ '
          '\nEvery year, expenses magically increase, Steve complained, and he had to work even harder at work to make more money.'
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