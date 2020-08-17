import 'hospital_person.dart';
import 'patient.dart';

class Doctor extends HospitalPerson {
  String _sector;
  List<Patient> _patients;

  Doctor.named(
      {String name,
      int age,
      double height,
      bool isEmployed,
      String sector,
      List<Patient> patients})
      : _patients = patients ?? [],
        _sector = sector,
        super(name, age, height, isEmployed);

  Doctor(String name, int age, double height, bool isEmployed, String sector,
      List<Patient> patients)
      : _patients = patients ?? [],
        _sector = sector,
        super(name, age, height, isEmployed);

  void addPatient(Patient patient) {
    _patients.add(patient);
  }

  void showPatients() {
    _patients.forEach((element) => element.displayUserInfo());
  }

  @override
  String displayUserInfo() {
    print("$name $age $height $isEmployed, $_sector");

    return "A string";
  }
}
