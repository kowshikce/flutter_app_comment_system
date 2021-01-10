import 'user.dart';
import 'Replie.dart';

class Comment {
  User _user;

  String _message;

  int _likes;

  DateTime _postTime;

  List<Replay> _replay;

  Comment(this._user, this._message, this._likes, this._postTime, this._replay);

  User get commentator => this._user;

  String get message => this._message;

  int get likes => this._likes;

  DateTime get postTime => this._postTime;

  List<Replay> get replays => this._replay;
}
