import 'user.dart';

class Replay {
  User _user;

  String _message;

  int _likes;

  DateTime _postTime;

  Replay(this._user, this._message, this._likes, this._postTime);

  User get replyMaker => this._user;

  String get message => this._message;

  int get likes => this._likes;

  DateTime get replayPostTime => this._postTime;
}
