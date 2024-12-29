import 'package:class_assignment_2/bloc/area_of_circle_bloc.dart';
import 'package:class_assignment_2/bloc/simple_interest_bloc.dart';
import 'package:class_assignment_2/bloc/student_list_bloc.dart';
import 'package:class_assignment_2/view/area_of_circle_view.dart';
import 'package:class_assignment_2/view/simple_interest_view.dart';
import 'package:class_assignment_2/view/student_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Cubit<void> {
  DashboardBloc(
    this._areaOfCircleBloc,
    this._simpleInterestBloc,
    this._studentListBloc,
  ) : super(null);

  final AreaOfCircleBloc _areaOfCircleBloc;
  final SimpleInterestBloc _simpleInterestBloc;
  final StudentListBloc _studentListBloc;

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _areaOfCircleBloc,
                child: const AreaOfCircleView(),
              )),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _simpleInterestBloc,
                child: const SimpleInterestView(),
              )),
    );
  }

  void openStudentListView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _studentListBloc,
                  child: const StudentListView(),
                )));
  }
}
