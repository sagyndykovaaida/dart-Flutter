import 'dart:io';

void main() {
  Student student = new Student('Ivan', 2, 4, 6);
  student.display();
}

class Student {
  String name = '';
  double grade1, grade2, grade3;

  Student(this.name, this.grade1, this.grade2, this.grade3);
  void gpa() {
    double Gpa = (grade1 + grade2 + grade3) / 3;
    print("average score: $Gpa");
  }

  void display() {
    print("name: $name");
    gpa();
  }
}
