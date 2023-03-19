import 'package:equatable/equatable.dart';

class SingUpEntity extends Equatable {

  final String status;

  SingUpEntity({required this.status});

  @override
  List<Object> get props => [status];
}