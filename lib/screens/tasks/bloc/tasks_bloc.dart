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
    on<ChangeTaskStatus>(_onChangeTaskStatus);
    on<DeleteTask>(_onDeleteTask);
    on<ChangeSort>(_onChangeSort);
  }

  Future<void> _onStarted(
    Started event,
    Emitter<TasksState> emit,
  ) async {
    final tasks = await _repository.fetchTasks();
    emit(state.copyWith(tasks: tasks));
  }

  Future<void> _onChangeTaskStatus(
    ChangeTaskStatus event,
    Emitter<TasksState> emit,
  ) async {
    final updatedTasks = state.tasks?.map((task) {
      if (task.id == event.id) {
        return task.copyWith(status: !task.status);
      }
      return task;
    }).toList();
    _repository.changeTaskStatus(event.id);
    emit(state.copyWith(tasks: updatedTasks));
  }

  Future<void> _onDeleteTask(
    DeleteTask event,
    Emitter<TasksState> emit,
  ) async {
    await _repository.deleteTask(event.id);
    final updatedTasks =
        state.tasks?.where((task) => task.id != event.id).toList();
    emit(state.copyWith(tasks: updatedTasks));
  }

  Future<void> _onChangeSort(
    ChangeSort event,
    Emitter<TasksState> emit,
  ) async {
    bool? newSort;
    if (state.sort == null) {
      newSort = true;
    } else if (state.sort == true) {
      newSort = false;
    } else {
      newSort = null;
    }

    final tasks = await _repository.fetchTasks();
    List<TaskEntity> sortedTasks;
    if (newSort == true) {
      sortedTasks = tasks.where((task) => task.status).toList();
    } else if (newSort == false) {
      sortedTasks = tasks.where((task) => !task.status).toList();
    } else {
      sortedTasks = tasks;
    }

    emit(state.copyWith(tasks: sortedTasks, sort: newSort));
  }
}
