import 'package:auto_route/auto_route.dart';
import 'package:vilavi_task_assistant/navigation/app_router.gr.dart';
@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginScreen.page),
        AutoRoute(page: TasksScreen.page, initial: true),
        AutoRoute(page: AddTaskScreen.page),
      ];
}
