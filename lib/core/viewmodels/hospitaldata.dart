import 'package:flutter/cupertino.dart';
import 'package:hospital/core/model/hospitaldata/hospitalModel.dart';
import 'package:hospital/core/services/api_repository.dart';

// ignore: camel_case_types
class hospitaldata extends ChangeNotifier {
  ApiProviderRepositary repository = ApiProviderRepositary();
  bool _loading;
  bool get loading => _loading;
  HospitalData _hospitaldatas;
  HospitalData get hospitalData => _hospitaldatas;

  Future getdata() async {
    try {
      _loading = true;
      notifyListeners();
      await repository.requestHospitalList().then((response) {
        _hospitaldatas = HospitalData.fromJson(response.data);
        _loading = false;
        notifyListeners();
      });
    } catch (e) {
      print("error occur");
    }
  }
}
