import 'package:flutter/material.dart';

@immutable
sealed class SimpleInterestEvent {}

class CalculateSimpleInterestEvent extends SimpleInterestEvent {
  final double principal;
  final double rate;
  final double time;

  CalculateSimpleInterestEvent({
    required this.principal,
    required this.rate,
    required this.time,
  });
}
