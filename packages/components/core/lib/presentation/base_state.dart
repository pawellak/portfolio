import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart' show immutable;

@immutable
abstract class BaseState extends Equatable {
  const BaseState();

  bool get ignoreEquals => true;

  @override
  bool operator ==(Object other) => ignoreEquals ? !ignoreEquals : super == other;

  @override
  int get hashCode => ignoreEquals ? 0 : super.hashCode;

  @override
  List<Object> get props => [];
}
