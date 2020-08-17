import 'hospital_person.dart';

class Patient extends HospitalPerson {
  List<String> _allergies;
  static int numberOfPatientInstances = 0;

  static getNumberOfInstances() {
    return numberOfPatientInstances;
  }

  Patient(String name, int age, double height, bool isEmployed,
      List<String> allergies)
      : _allergies = allergies,
        super(name, age, height, isEmployed) {
    numberOfPatientInstances++;
  }

  Patient.named(
      {String name,
      int age,
      double height,
      bool isEmployed,
      List<String> allergies})
      : _allergies = allergies,
        super.named(name: name, age: age) {
    numberOfPatientInstances++;
  }

  List<String> get allergies => _allergies;

  set allergies(values) => values = _allergies;

  void addAllergy(String allergy) {
    _allergies.add(allergy);
  }

  void addAllergies(List<String> allergyToAdd) {
    _allergies.addAll(allergyToAdd);
  }

  bool removeAllergy(String allergy) {
    return _allergies.remove(allergy);
  }

  @override
  String displayUserInfo() {
    print("allergies $allergies");
    return super.displayUserInfo();
  }
}
