enum Gender { Male, Female, Other }

class Student {
  String name;
  Gender gender;

  Student(this.name, this.gender);
}

void main() {
  var students = [
    Student("Alice", Gender.Female),
    Student("Bob", Gender.Male),
  ];

  for (var i = 0; i < students.length; i++) {
    print('$i: ${students[i].name}, ${students[i].gender}');
  }
}
