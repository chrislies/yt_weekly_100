import 'package:get_it/get_it.dart';
import 'package:yt_weekly_100/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
