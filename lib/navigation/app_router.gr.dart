// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:vilavi_task_assistant/screens/add_task/add_task_screen.dart'
    as _i1;
import 'package:vilavi_task_assistant/screens/login/login_screen.dart' as _i2;
import 'package:vilavi_task_assistant/screens/tasks/tasks_screen.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AddTaskScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddTaskScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    TasksScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.TasksScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTaskScreen]
class AddTaskScreen extends _i3.PageRouteInfo<void> {
  const AddTaskScreen({List<_i3.PageRouteInfo>? children})
      : super(
          AddTaskScreen.name,
          initialChildren: children,
        );

  static const String name = 'AddTaskScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i3.PageRouteInfo<void> {
  const LoginScreen({List<_i3.PageRouteInfo>? children})
      : super(
          LoginScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class TasksScreen extends _i3.PageRouteInfo<void> {
  const TasksScreen({List<_i3.PageRouteInfo>? children})
      : super(
          TasksScreen.name,
          initialChildren: children,
        );

  static const String name = 'TasksScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}