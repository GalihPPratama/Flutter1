import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/models/student_models.dart';


class StudentService {
  final CollectionReference students =
      FirebaseFirestore.instance.collection('students');

  Future<void> createStudent(Student student) async {
    await students.doc(student.id).set(student.toMap());
  }

  Future<Student?> getStudent(String id) async {
    final doc = await students.doc(id).get();
    if (doc.exists) {
      return Student.fromMap(doc.id, doc.data() as Map<String, dynamic>);
    }
    return null;
  }

  Future<void> topUpSaldo(String id, int amount) async {
    await students.doc(id).update({
      'saldo': FieldValue.increment(amount),
    });
  }

  Future<void> deleteStudent(String id) async {
    await students.doc(id).delete();
  }
}