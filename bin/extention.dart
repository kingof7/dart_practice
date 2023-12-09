extension MyMachineExt on Machine {
  // Machine에 MyMachineExt 확장(마운트)
  void scanning() => print("scanning...");
  void printing() => print("printing...");
}

class Machine {}

void main() {
  final machine = Machine();
  machine.printing();
  machine.scanning();
}
