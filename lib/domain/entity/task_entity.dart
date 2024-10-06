import 'package:freezed_annotation/freezed_annotation.dart';

part "task_entity.freezed.dart";

@freezed
class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required int id,
    required String title,
    required bool status,
  }) = _TaskEntity;
}