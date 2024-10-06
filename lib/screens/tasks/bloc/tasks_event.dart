part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.started() = Started;
  const factory TasksEvent.changeTaskStatus({required int id}) =
      ChangeTaskStatus;
  const factory TasksEvent.deleteTask({required int id}) = DeleteTask;
  const factory TasksEvent.changeSort({required bool? sort}) = ChangeSort;
}
