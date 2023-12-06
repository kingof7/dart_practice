class A {
  final int value;

  const A(this.value);

  @override // 값 비교
  bool operator ==(Object other) {
    return identical(this, other) || // identical == this와 other의 주소 비교
        other is A && runtimeType == other.runtimeType && value == other.value;
  }

  @override // 해시코드 불변
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return "A($value)";
  }
}

void main() {
  print(A(1) == A(1));
  print(A(1));

  // A a = A(1);
  // Map<A, int> map = {a: 1};
  // print(map[a]); // 1

  // a.value = 2; // value가 변경되면 hashCode도 변경 됨
  // print(map[a]); // null (value가 변경되어, hashCode 기반 자료형이 정상 작동하지 않음)
  // print(A(1) == A(1));
  // print(A(1));
}
