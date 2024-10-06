part of 'add_task_bloc.dart';

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState.initial({required bool isAdded}) = Initial;
  const factory AddTaskState.error({required String errorMessage}) = Error;
}
