import "package:dio/dio.dart";
import "package:injectable/injectable.dart";
import "package:retrofit/http.dart";
import 'package:retrofit/error_logger.dart';
import "package:vilavi_task_assistant/data/model/task_model.dart";
import "package:vilavi_task_assistant/domain/datasource/remote/task_remote_data_source.dart";

part "task_remote_data_source_impl.g.dart";

@RestApi()
@Singleton(as: TaskRemoteDataSource)
abstract class TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  @factoryMethod
  factory TaskRemoteDataSourceImpl(Dio dio) = _TaskRemoteDataSourceImpl;

  @override
  @GET("/todos")
  Future<List<TaskModel>> fetchTasks();
}
