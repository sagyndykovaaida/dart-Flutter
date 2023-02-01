void main (){

  Employee employee = Employee('Ivan',30,65.0,190.0,'01.01.1992','AAA 15',500000,2.5,'01.01.2022');
  employee.display();
  print(" ");
  Student student = Student('Alyona', 18, 50.0, 168.0, '01.01.2005', 'BBB 01');
  student.showGrades();
  }

class Person{
  String name;
  int age;
  double weight;
  double height;
  String bday;
  String address;

  Person(this.name,this.age,this.weight,this.height,this.bday,this.address);
}
class Employee extends Person{

  String connectionDate;
  double workExperience;
  double salary;

  Employee(name,age,weight,height,bday,address, this.salary,this.workExperience,this.connectionDate) : super(name,age,weight,height,bday,address);

  @override
  void display(){
    print("Info about employeer : ");
    print("Name: $name");
    print("age: $age");
    print("weight: $weight");
    print("height: $height");
    print("bday: $bday");
    print("address: $address");

  }
}

class Student extends Person {
  List<double> grade = [80.0, 90.0, 95.0];
  List<String> disciplines = ["Math", "Algo", "DB"];
  Map<String, double> subjects = {};

  Student(name, age,weight,height,bday,address) : super(name,age,weight,height,bday,address);
  void showGrades() {
    print("Subjects and grades for student $name:");
    for (int i = 0; i < grade.length; i++) {
      subjects[disciplines[i]] = grade[i];
    }
    for (var subject in subjects.keys) {
      print(" $subject: ${subjects[subject]}");
    }
  }
  void addSubject(){

  }

}
class Professor extends Student{


}