class Vehicle{
  bool _isBike ;
  String _owner , _Number;

  Vehicle(this._isBike, this._owner, this._Number);

  get Number => _Number;

  set Number(value) {
    _Number = value;
  }

  String get owner => _owner;

  set owner(String value) {
    _owner = value;
  }

  bool get isBike => _isBike;

  set isBike(bool value) {
    _isBike = value;
  }
}