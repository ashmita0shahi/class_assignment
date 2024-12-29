import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final String name;
  final int age;
  final String address;

  const Student(this.name, this.age, this.address);

  @override
  List<Object> get props => [name, age, address];
}