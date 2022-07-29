import 'package:dreamnlaunch/LessonOne/story.dart';
class StoryBrain {
  int _storyNumber = 0;
  final List<Story> _storyBank = [
    Story('What it means to be "rich" varies from person to person.'
        '\nIn Burundi, where the average per capita income is \$700 per year, someone with \$2,000 in the bank might be considered wealthy.\n\ '

        '\nHowever, \$2,000 may not even cover one month\'s rent in the US, where rents can average \$1,852 per month.'
    ),
    Story('Although the rich benefit from high incomes, this demonstrates the temporary status of \"rich.\" \n\ '

        '\nConsider NFL players, who earned an average of \$2.7 million per year in 2017 and no less than \$480,000.'
        '\nIf they lose their ability to compete, the majority of them lack the skills to earn the same salary in another profession.\n\ '

        '\nThis could jeopardize their \"wealth.\"'
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