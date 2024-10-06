import 'package:vilavi_task_assistant/data/model/task_model.dart';

abstract class TaskRemoteDataSource {
  Future<List<TaskModel>> fetchTasks();
}
