part of 'area_of_circle_bloc.dart';

@immutable
sealed class AreaOfCircleEvent {}

class CalculateAreaEvent extends AreaOfCircleEvent {
  final double radius;

  CalculateAreaEvent(this.radius);
}
