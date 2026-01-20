class Student {
  final String id;
  final String name;
  final int saldo;

  Student({required this.id, required this.name, required this.saldo});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'saldo': saldo,
    };
  }

  factory Student.fromMap(String id, Map<String, dynamic> map) {
    return Student(
      id: id,
      name: map['name'],
      saldo: map['saldo'],
    );
  }
}