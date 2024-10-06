import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vilavi_task_assistant/domain/entity/task_entity.dart';

@injectable
class TaskLocalDataSource {
  final SharedPreferences _prefs;
  static const String _tasksKey = 'tasks';

  TaskLocalDataSource(this._prefs);

  Future<void> saveTasks(List<TaskEntity> tasks) async {
    final tasksJson = tasks.map((task) {
      return {
        'id': task.id,
        'title': task.title,
        'status': task.status,
      };
    }).toList();

    await _prefs.setString(_tasksKey, jsonEncode(tasksJson));
  }

  List<TaskEntity> getTasks() {
    final tasksString = _prefs.getString(_tasksKey);
    if (tasksString == null) return [];

    final List<dynamic> tasksJson = jsonDecode(tasksString);
    return tasksJson.map((taskJson) {
      return TaskEntity(
        id: taskJson['id'],
        title: taskJson['title'],
        status: taskJson['status'],
      );
    }).toList();
  }

  Future<void> updateTaskStatus(int taskId) async {
    final tasks = getTasks();
    final updatedTasks = tasks.map((task) {
      if (task.id == taskId) {
        final currentStatus = task.status;
        return task.copyWith(status: !currentStatus);
      }
      return task;
    }).toList();

    await saveTasks(updatedTasks);
  }

  Future<void> addTask(String title) async {
    final tasks = getTasks();
    final newId = tasks.length + 1;
    final newTask = TaskEntity(id: newId, title: title, status: false);
    tasks.insert(0, newTask);
    await saveTasks(tasks);
  }
}
