import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";
import "package:vilavi_task_assistant/di/locator.config.dart";

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDependencies() async {
  await getIt.init();
}
