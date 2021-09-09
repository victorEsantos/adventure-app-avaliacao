class Story {
  String _storyTitle;
  String _choice1;
  String _choice2;

  Story(this._storyTitle, this._choice1, this._choice2);

  String get choice2 => _choice2;

  set choice2(String value) {
    _choice2 = value;
  }

  String get choice1 => _choice1;

  set choice1(String value) {
    _choice1 = value;
  }

  String get storyTitle => _storyTitle;

  set storyTitle(String value) {
    _storyTitle = value;
  }
}
