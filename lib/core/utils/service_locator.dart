import 'package:bookly/core/utils/app_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(AppService(Dio())),
  );
}
