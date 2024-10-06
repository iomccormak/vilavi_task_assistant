import "package:dio/dio.dart";
import "package:injectable/injectable.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";
import "package:shared_preferences/shared_preferences.dart";

const int timeOutInSec = 30;
const int millisecondsInSec = 1000;

@module
abstract class DataModule {
  PrettyDioLogger get logger => PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      );

  @lazySingleton
  Dio get prodDio => Dio(
        BaseOptions(
          baseUrl: "https://jsonplaceholder.typicode.com",
          connectTimeout: const Duration(
            milliseconds: timeOutInSec * millisecondsInSec,
          ),
          receiveTimeout: const Duration(
            milliseconds: timeOutInSec * millisecondsInSec,
          ),
          contentType: "application/json",
        ),
      );
      
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
