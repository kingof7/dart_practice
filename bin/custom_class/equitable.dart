import 'package:equatable/equatable.dart';

class A extends Equatable {
  final int value;

  const A(this.value);

  @override
  List<Object?> get props => [value]; // 값 비교 = value equality 쉽게 구현
}

void main() {
  print(A(1) == A(1));
  print(A(1));
}
