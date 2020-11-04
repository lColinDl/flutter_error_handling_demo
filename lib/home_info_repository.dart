import 'package:dio/dio.dart';
import 'package:error_handling_demo/exceptions.dart';
import 'package:error_handling_demo/get_home_info_result_use_case.dart';
import 'package:error_handling_demo/home_info.dart';
import 'package:error_handling_demo/todo_list.dart';
import 'package:error_handling_demo/user_profile.dart';

class HomeInfoRepository {
  final Dio dio;
  final HomeInfoMapper mapper;

  HomeInfoRepository(this.dio, this.mapper);

  Future<HomeInfo> getHomeInfo() async {
    try {
      final response = await dio.get('http://www.example.com');
      return mapper.map(response.data);
    } catch (e) {
      //This can be any kind of Response
      throw NetworkException();
    }
  }

  Future<HomeInfoResult> getHomeInfoAsResult() async {
    try {
      final response = await dio.get('http://www.example.com');
      final data = mapper.map(response.data);
      return HomeInfoResult.success(data: data);
    } catch (e) {
      return HomeInfoResult.error(error: e);
    }
  }
}

class HomeInfoMapper {
  HomeInfo map(dynamic data) {
    //Map some data. This is mocked:
    return HomeInfo(
      UserProfile('Colin'),
      ToDoList([
        ToDo('Write Code Example', true),
        ToDo('Convince team that Result Objects are bad'),
      ]),
    );
  }
}
