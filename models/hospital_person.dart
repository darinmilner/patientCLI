import '../person.dart';

class HospitalPerson implements Person {
  String _name;
  int _age;
  int _ageInDays;
  double _height;
  bool _isEmployed;

  HospitalPerson.named({
    String name,
    int age,
  }) {
    _name = name;
    _age = age;
    transformAgeToDays();
  }

  HospitalPerson(String name, int age, double height, bool isEmployed)
      : _name = name,
        _age = age,
        _height = height,
        _isEmployed = isEmployed {
    transformAgeToDays();
  }

  String get name => _name;

  double get height => _height;

  int get age {
    return _age;
  }

  bool get isEmployed {
    return _isEmployed;
  }

  set name(String name) {
    _name = name;
  }

  set age(int age) {
    _age = age;
  }

  set height(double height) => _height = height;
  set isEmployed(bool isEmployed) => _isEmployed = isEmployed;

  String displayUserInfo() {
    print("$_name $_age $_height $_isEmployed");

    return "A string";
  }

  int userAgeInDays() {
    return _ageInDays;
  }

  int transformAgeToDays() {
    return _ageInDays = _age * 365;
  }
}
