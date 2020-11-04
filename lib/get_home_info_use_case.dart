import 'package:error_handling_demo/home_info.dart';
import 'package:error_handling_demo/home_info_repository.dart';

class GetHomeInfoUseCase {
  final HomeInfoRepository repository;

  GetHomeInfoUseCase(this.repository);

  Future<HomeInfo> execute() async {
    final homeInfo = await repository.getHomeInfo();
    homeInfo.someExtraFieldManipulatedFromTheUseCase = 'I can manipulate it easily';
    return homeInfo;
  }
}
