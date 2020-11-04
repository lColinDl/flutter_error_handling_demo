import 'package:error_handling_demo/data/home_info_repository.dart';
import 'package:error_handling_demo/domain/model/home_info.dart';

class GetHomeInfoUseCase {
  final HomeInfoRepository repository;

  GetHomeInfoUseCase(this.repository);

  Future<HomeInfo> execute() async {
    final homeInfo = await repository.getHomeInfo();
    homeInfo.someExtraFieldManipulatedFromTheUseCase = 'I can manipulate it easily';
    return homeInfo;
  }
}
