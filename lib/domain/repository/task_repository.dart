import 'package:vilavi_task_assistant/domain/entity/task_entity.dart';

abstract class TaskRepository {
  Future<List<TaskEntity>> fetchTasks();
  List<TaskEntity> getTasks();
  Future<void> changeStatus(int id);
  Future<void> addTask(String title);
}
