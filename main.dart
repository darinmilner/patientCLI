import 'models/doctor.dart';
import 'models/hospital_person.dart';
import 'models/patient.dart';
import 'person.dart';
import 'repository.dart';
import 'dart:io';

void main() async {
  final repository = initRepoistory();

  bool appIsRunning = true;
  displayWecomeText();
  while (appIsRunning) {
    print("Choose an option");
    final input = stdin.readLineSync().toLowerCase();

    switch (input) {
      case "1":
        displayDBUsers(repository);
        break;
      case "help":
        displayAvailableOptions();
        break;
      case "quit":
        appIsRunning = false;
        break;
      case "exit":
        appIsRunning = false;
        break;
      default:
        print("Not a valid option");
    }
  }
}

Future<String> fetchData() {
  return Future.delayed(Duration(milliseconds: 3000), () {
    print("In the future");
    return "Future resolved";
  });
}

void displayDBUsers(Repository r) {
  final people = r.patients;
  people.forEach((k, p) => p.displayUserInfo());
}

void displayWecomeText() {
  print("Welcome to the Hospital Database");
  print("--------------------------------");
  displayAvailableOptions();
}

void displayAvailableOptions() {
  print("Please choose an option");
  print("1--List of all staff");
  print("Help--List available options");
  print("Type Exit or Quit to exit application.");
}

Repository<Person> initRepoistory() {
  List<String> person1Allergies = ["peanuts", "wheat", "apples"];
  List<String> person2Allergies = ["dust", "oranges", "dogs"];
  Patient person1 = Patient("Test", 14, 145.6, false, person1Allergies);
  Patient person2 = Patient("Test2", 35, 170.9, true, person2Allergies);
  Patient person3 = Patient.named(
      name: "Person3",
      age: 77,
      height: 155.7,
      isEmployed: true,
      allergies: person2Allergies);

  Doctor doctor = Doctor.named(
    name: "Dr. Adil",
    age: 44,
    height: 160.7,
    isEmployed: true,
    sector: "Cardiology",
  );

  doctor..addPatient(person1)..addPatient(person2);

  Repository repo = Repository<Person>();

  repo
    ..addItem(person1)
    ..addItem(person2)
    ..addItem(HospitalPerson(
      "Mariam",
      44,
      78.9,
      true,
    ))
    ..addItem(doctor);

  return repo;
}
