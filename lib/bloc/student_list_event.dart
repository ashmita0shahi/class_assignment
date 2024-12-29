part of 'student_list_bloc.dart';

@immutable
sealed class StudentListEvent {}

class AddStudentEvent extends StudentListEvent {
  final String studentName;

  AddStudentEvent(this.studentName);
}

class RemoveStudentEvent extends StudentListEvent {
  final int index;

  RemoveStudentEvent(this.index);
}
