import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'student_list_event.dart';

class StudentListBloc extends Bloc<StudentListEvent, List<String>> {
  StudentListBloc() : super([]) {
    on<AddStudentEvent>((event, emit) {
      final updatedList = List<String>.from(state);
      updatedList.add(event.studentName);
      emit(updatedList);
    });

    on<RemoveStudentEvent>((event, emit) {
      final updatedList = List<String>.from(state);
      updatedList.removeAt(event.index);
      emit(updatedList);
    });
  }
}
