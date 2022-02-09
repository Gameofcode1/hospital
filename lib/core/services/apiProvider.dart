import 'package:dio/dio.dart';
import 'package:hospital/core/services/apis.dart';

class ApiProvider {
  final Dio _dio = Dio(new BaseOptions(
      connectTimeout: 60000,
      receiveTimeout: 60000,
      followRedirects: false,
      validateStatus: (status) {
        return status < 500;
      }));

  Future<Response> getHospitalList() async {
    return await _dio.get(Apis.hospitalapi);
  }
}
