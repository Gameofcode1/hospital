import 'package:dio/dio.dart';
import 'package:hospital/core/services/apiProvider.dart';

class ApiProviderRepositary {
  ApiProvider _provider = ApiProvider();
  Future<Response> requestHospitalList() async {
    return _provider.getHospitalList();
  }
}
