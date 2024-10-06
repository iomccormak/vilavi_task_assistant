// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;
import 'package:vilavi_task_assistant/data/datasource/local/task_local_data_source.dart'
    as _i9;
import 'package:vilavi_task_assistant/data/datasource/remote/task_remote_data_source_impl.dart'
    as _i8;
import 'package:vilavi_task_assistant/data/di/locator.dart' as _i14;
import 'package:vilavi_task_assistant/data/repository/task_repository_impl.dart'
    as _i11;
import 'package:vilavi_task_assistant/domain/datasource/remote/task_remote_data_source.dart'
    as _i7;
import 'package:vilavi_task_assistant/domain/repository/task_repository.dart'
    as _i10;
import 'package:vilavi_task_assistant/screens/add_task/bloc/add_task_bloc.dart'
    as _i13;
import 'package:vilavi_task_assistant/screens/login/bloc/login_bloc.dart'
    as _i3;
import 'package:vilavi_task_assistant/screens/tasks/bloc/tasks_bloc.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i3.LoginBloc>(() => _i3.LoginBloc());
    gh.factory<_i4.PrettyDioLogger>(() => dataModule.logger);
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i6.Dio>(() => dataModule.prodDio);
    gh.singleton<_i7.TaskRemoteDataSource>(
        () => _i8.TaskRemoteDataSourceImpl(gh<_i6.Dio>()));
    gh.factory<_i9.TaskLocalDataSource>(
        () => _i9.TaskLocalDataSource(gh<_i5.SharedPreferences>()));
    gh.singleton<_i10.TaskRepository>(() => _i11.TaskRepositoryImpl(
          gh<_i7.TaskRemoteDataSource>(),
          gh<_i9.TaskLocalDataSource>(),
        ));
    gh.factory<_i12.TasksBloc>(() => _i12.TasksBloc(gh<_i10.TaskRepository>()));
    gh.factory<_i13.AddTaskBloc>(
        () => _i13.AddTaskBloc(gh<_i10.TaskRepository>()));
    return this;
  }
}

class _$DataModule extends _i14.DataModule {}
