import 'package:injectable/injectable.dart';
import 'package:vilavi_task_assistant/data/datasource/local/task_local_data_source.dart';
import 'package:vilavi_task_assistant/data/model/task_model.dart';
import 'package:vilavi_task_assistant/domain/datasource/remote/task_remote_data_source.dart';
import 'package:vilavi_task_assistant/domain/entity/task_entity.dart';
import 'package:vilavi_task_assistant/domain/repository/task_repository.dart';

@Singleton(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  final TaskRemoteDataSource _remoteDataSource;
  final TaskLocalDataSource _localDataSource;

  TaskRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
  );

  @override
  Future<List<TaskEntity>> fetchTasks() async {
    final localTasks = _localDataSource.getTasks();
    if (localTasks.isEmpty) {
      final models = await _remoteDataSource.fetchTasks();
      final entities = models.map((model) => model.toEntity()).toList();
      _localDataSource.saveTasks(entities);
      return entities;
    } else {
      return localTasks;
    }
  }

  @override
  List<TaskEntity> getTasks() {
    return _localDataSource.getTasks();
  }

  @override
  Future<void> changeStatus(int id) async {
    await _localDataSource.changeStatus(id);
  }

  @override
  Future<void> addTask(String title) async {
    await _localDataSource.addTask(title);
  }
}
