void main() {
  String studentName = "Nahid";
  int marks = 85;
  String grade;
  String description;
  if (marks >= 80) {
    grade = "A";
  } else if (marks <= 79 && marks >= 70) {
    grade = "B";
  } else if (marks <= 69 && marks >= 60) {
    grade = "C";
  } else {
    grade = "F";
  }
  switch (grade) {
    case 'A':
      description = "Excellent";
    case 'B':
      description = "Good Job";
    case 'C':
      description = "Aro valo korte hobe";
    case 'F':
      description = "Failll";
    default:
      description = "Invalid Grade";
  }
  print("Student Report");
  print("Name: $studentName");
  print("Marks: $marks");
  print("Grade: $grade");
  print("\n$description");

}
