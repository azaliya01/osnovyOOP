class Student {  // создала класс студенты
  String name; // поле имя
  int age; // пле возвраст
  double averagePoint;  // поле средний балл

  Student(this.name, this.age, this.averagePoint);

  void printInfo() {  // метод printInfo не возвращант никакого значения
    print('Студент: $name, возраст: $age, средний балл: $averagePoint');
  }

  bool isExcellent() {  // метод isExcellent возвращает логический результат  типа bool где тру или фолс
    return averagePoint >= 4.5; // тру если средний балл больше или равно 4.5
  }
}

void main() {
  var st1 = Student('Азалия', 16, 4.8); // студенты
  var st2 = Student('Илим', 16, 2.2);
  var st3 = Student('Сезим', 15, 4.5);

  var students = [st1, st2, st3];

  for (var s in students) {
    s.printInfo();
    print('Отличник: ${s.isExcellent()}\n');
  }
} // всеее