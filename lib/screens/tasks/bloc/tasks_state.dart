part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initial({
    List<TaskEntity>? tasks,
  }) = _Initial;
}
