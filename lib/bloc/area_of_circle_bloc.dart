import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'area_of_circle_event.dart';

class AreaOfCircleBloc extends Bloc<AreaOfCircleEvent, double> {
  AreaOfCircleBloc() : super(0.0) {
    on<CalculateAreaEvent>((event, emit) {
      final area = 3.14159 * event.radius * event.radius;
      emit(area);
    });
  }
}
