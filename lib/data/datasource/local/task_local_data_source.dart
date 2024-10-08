import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vilavi_task_assistant/domain/entity/task_entity.dart';

const String _tasksKey = 'tasks';

@injectable
class TaskLocalDataSource {
  final SharedPreferences _prefs;

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

  Future<void> changeStatus(int taskId) async {
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
    final newTask = TaskEntity(
      id: tasks.length + 1,
      title: title,
      status: false,
    );
    tasks.insert(0, newTask);
    await saveTasks(tasks);
  }

  Future<void> deleteTask(int id) async {
    final tasks = getTasks();
    final updatedTasks = tasks.where((task) => task.id != id).toList();
    await saveTasks(updatedTasks);
  }
}
