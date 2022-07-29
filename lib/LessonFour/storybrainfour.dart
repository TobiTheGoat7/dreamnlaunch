import 'package:dreamnlaunch/LessonOne/story.dart';
class StoryBrain {
  int _storyNumber = 0;
  final List<Story> _storyBank = [
    Story('Financial literacy is the understanding of personal finance and the ability to make money work for you.\n\ '
        '\nIt entails understanding financial principles such as budgeting, saving money, investing in stocks or bonds, and using credit wisely.\n\ '
        '\nIt is critical for people to be financially literate. This will enable them to make informed decisions and gain control of their finances, allowing them to achieve financial independence.'
    ),
    Story('Financial literacy is a necessary skill for everyone to possess. It is critical to understand how to spend and conserve money sensibly.\n\ '
        '\nFinancial literacy may help you achieve your financial goals, preserve your financial security, and even keep you out of debt.'
    ),
    Story(
        'You might not realize it, but knowing about personal finance will make your life easier.\n\ '
         '\nIn the United States, over half of Americans are financially illiterate, which implies they lack the knowledge and abilities necessary to make healthy financial decisions.\n\ '
         '\nThis can lead to poor financial decisions and, in some situations, poverty.'
    ),
    Story(
        'Financial literacy is something that may be taught in schools, but it should also be taught at home.\n\ '
         '\nFinancial education should begin in childhood and continue throughout one\'s life.\n\ '
          '\nThe importance of financial literacy cannot be overstated because it can lead to financial freedom, which is many people\'s ultimate objective today.\n\ '
           '\nIt is not only important to learn how to save, but also to know how to spend smartly.'
    ),
    Story(
        'People should understand how much they can spend, what kind of lifestyle they desire, and what steps they must take to obtain it.\n\ '
         '\nThis allows a person to make educated decisions and plan for the future without feeling pressured by money concerns or being overwhelmed by debt.\n\ '
         '\nIn today\'s society, where everything revolves around money, it is critical that people learn the fundamentals of finance in order to take charge of their financial lives.'
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