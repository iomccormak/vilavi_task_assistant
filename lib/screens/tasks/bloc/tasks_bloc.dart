import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vilavi_task_assistant/domain/entity/task_entity.dart';
import 'package:vilavi_task_assistant/domain/repository/task_repository.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';
part 'tasks_bloc.freezed.dart';

@injectable
class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final TaskRepository _repository;

  TasksBloc(this._repository) : super(const _Initial()) {
    on<Started>(_onStarted);
    on<ChangeStatus>(_onChangeStatus);
  }

  Future<void> _onStarted(
    Started event,
    Emitter<TasksState> emit,
  ) async {
    final tasks = await _repository.fetchTasks();
    emit(state.copyWith(tasks: tasks));
  }

  Future<void> _onChangeStatus(
    ChangeStatus event,
    Emitter<TasksState> emit,
  ) async {
    final updatedTasks = state.tasks?.map((task) {
      if (task.id == event.id) {
        return task.copyWith(status: !task.status);
      }
      return task;
    }).toList();
    _repository.changeStatus(event.id);
    emit(state.copyWith(tasks: updatedTasks));
  }
}
