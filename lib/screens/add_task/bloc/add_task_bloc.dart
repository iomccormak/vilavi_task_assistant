import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vilavi_task_assistant/domain/repository/task_repository.dart';

part 'add_task_event.dart';
part 'add_task_state.dart';
part 'add_task_bloc.freezed.dart';

@injectable
class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  final TaskRepository _repository;

  AddTaskBloc(this._repository) : super(const Initial(isAdded: false)) {
    on<AddTask>(_onAddTask);
  }

  Future<void> _onAddTask(
    AddTask event,
    Emitter<AddTaskState> emit,
  ) async {
    if (event.title.trim().isNotEmpty) {
      await _repository.addTask(event.title);
      emit(const AddTaskState.initial(isAdded: true));
    } else {
      emit(const AddTaskState.error(errorMessage: 'Title cannot be empty'));
    }
  }
}
