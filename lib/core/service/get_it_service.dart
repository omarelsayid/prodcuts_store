import 'package:get_it/get_it.dart';
import 'package:shoes_app/Featuers/home/data/repos/home_repo.dart';
import 'package:shoes_app/Featuers/home/data/repos/home_repo_impl.dart';
import 'package:shoes_app/core/service/api_service.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(getIt.get<ApiService>()));
}
