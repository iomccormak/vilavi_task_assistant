part of 'add_task_bloc.dart';

@freezed
class AddTaskEvent with _$AddTaskEvent {
  const factory AddTaskEvent.addTask({required String title}) = AddTask;
}
