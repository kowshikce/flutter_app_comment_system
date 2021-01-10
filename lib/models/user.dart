class User {
  bool _isTopFan;
  String name;

  User(this.name, this._isTopFan);

  bool get topFan => this._isTopFan;

  String get userName => this.name;
}
