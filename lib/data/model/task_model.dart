import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vilavi_task_assistant/domain/entity/task_entity.dart';

part "task_model.freezed.dart";
part "task_model.g.dart";

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int id,
    required String title,
  }) = _TaskModel;
  
  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

extension TaskModelMapper on TaskModel {
  TaskEntity toEntity() {
    return TaskEntity(
      id: id,
      title: title,
      status: false,
    );
  }
}
