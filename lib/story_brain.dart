import 'package:adventure/story.dart';
import 'package:adventure/storyData.dart';

class StoryBrain {
  int _storyNumber = 0;
  var _storyData = StoryData();

  int get storyNumber => _storyNumber;

  set storyNumber(int value) {
    _storyNumber = value;
  }

  get storyData => _storyData;

  set storyData(value) {
    _storyData = value;
  }

  void restart() {
    this._storyNumber = 0;
  }

  void nextStory(int choiceNumber) {
    print('escolha numero' + choiceNumber.toString());
    print('storia numero' + this._storyNumber.toString());
    if (this._storyNumber == 0) {
      if (choiceNumber == 1) {
        this._storyNumber = 2;
      } else {
        this._storyNumber = 1;
      }
    } else if (this._storyNumber == 1) {
      if (choiceNumber == 1) {
        this._storyNumber = 2;
      } else {
        this._storyNumber = 3;
      }
    } else if (this._storyNumber == 2) {
      if (choiceNumber == 1) {
        this._storyNumber = 5;
      } else {
        this._storyNumber = 4;
      }
    } else if (this._storyNumber >= 3) {
      restart();
    }
  }

  bool isChoice2Available() {
    return this._storyNumber < 3;
  }

  Story getStory() {
    return _storyData.getStory(_storyNumber);
  }

  String getStoryTitle() {
    return getStory().storyTitle;
  }

  String getQuestionOne() {
    return getStory().choice1;
  }

  String getQuestionTwo() {
    return getStory().choice2;
  }
}
