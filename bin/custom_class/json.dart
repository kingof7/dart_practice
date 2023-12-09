import 'dart:convert';

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

// 생성자 메소드
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age};
  }
}

void main() {
  /// 네트워크 응답 문자열
  String jsonString = '{"name": "철수", "age": 10}';
  // 1. 역직렬화 String -> Map -> Person
  // JSON 포맷 String => Map<String, dynamic>으로 변경
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  print(jsonMap);

  Person person = Person.fromJson(jsonMap);
  print(person);

  // 2. 직렬화 Person -> Map -> String
  Map<String, dynamic> personMap = person.toJson();
  print(personMap);
  String personString = jsonEncode(personMap);
  print(personString.runtimeType); // personString의 타입
}
