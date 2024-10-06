part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.started() = Started;
  const factory TasksEvent.changeStatus({required int id}) = ChangeStatus;
}
