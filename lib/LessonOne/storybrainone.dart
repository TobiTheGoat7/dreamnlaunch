import 'package:flutter/material.dart';

import 'story.dart';
class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyBank = [
    Story(
        'An asset is simply anything that allows you to put money or cash in your pockets.'
            ' An asset is simply anything that puts money or cash into your pockets \nrather than taking it away.\n\ '
            '\nAn asset is anything that increases in monetary value over time. \n\  '
            '\nA liability is anything that takes money or cash out of your pockets. '
            'A liability is simply anything that takes money or cash out of your pockets rather than putting it back in.\n\  '
            '\nA liability is anything that decreases in monetary value over time.\n\ '
            '\nNote that asset is only classified as one, when it is passive i.e it can bring in money for you without you being actively involved.'
    ),
    Story('\"How come everyone isn\'t rich if it\'s that simple?\" \n\ '
        ' \nWell, because most people do not understand the difference between an asset and a liability. \n\ '
        '\nNote that we are describing assets and liabilities in a financial context. \n\ '
        ' \nLet\'s keep this going, shall we?  '),
    Story(
        'The rich have assets that continue to make them rich, while the poor and middle class have liabilities that never make them rich. \n\ '
            '\nDo you want to be wealthy? Do you want to be financially independent? Then acquire a large number of assets. \n\ '
            '\nDo you want to be broke? You want to stay in debt? Acquire a large number of liabilities.\n\ '
            '\nBut we are sure you don\'t want to be poor or broke, which is why you\'re reading this right now.'),
    Story('\"But I have assets, and I\'m still broke,\" you might argue.\n\ '
        '\nThere\'s a reason for that, and it\'s this: your liabilities exceed your assets.\n\ '
        '\nSimple! \n\ '
        '\nThis could be because you purchase liabilities believing them to be assets. The following are examples of liabilities that you probably believe are assets: \n\ '
        '\nYour house, which you believe is an asset, takes money out of your pocket to pay for loans, or rent and maintenance expenses, but does not return any money to you after those expenses are met; this occurs on a monthly/annual basis.'),
    Story(
        'Your car, which you believe is an asset, is actually a liability because it takes money out of your pocket for things like gas refills, maintenance, and other miscellaneous expenses, but it does not put any money back into your pocket after those expenses are met.\n\ '
            '\n\"So, what do I do now?\" \n\ '
            '\nThat’s a great question!'


    )

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
  bool isfinished() {
    if (_storyNumber >= _storyBank.length - 1) {
      print('now returning true');
      return true;
    } else {
      return false;
    }
  }
  bool goback() {
    if (_storyNumber <= 0) {
      print('now returning true');
      return true;
    }
    else{
      return false;
    }

  }


}