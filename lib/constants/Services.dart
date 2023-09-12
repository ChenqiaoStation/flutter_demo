import 'package:dio/dio.dart';
import 'package:flutter_demo/constants/xUtils.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// final SERVER = 'http://192.168.110.171:3000';
final SERVER = 'http://192.168.0.117:3000';

class Services {
  // GET
  static myGet(String service, Map<String, dynamic> params) async {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    var result = await dio.get(service, queryParameters: params);
    if (result.data['status']) {
    } else {
      xUtils.useToast(result.data['message']);
    }
    return result.data;
  }

  static sendSMS(mobile) async {
    var result = await myGet('${SERVER}/person/sendSMS', {'mobile': mobile});
    return result;
  }

  static checkSMS(mobile, code) async {
    var result = await myGet(
        '${SERVER}/person/checkSMS', {'mobile': mobile, 'code': code});
    return result;
  }

  static checkPassword(mobile, password) async {
    var result = await myGet('${SERVER}/person/checkPassword',
        {'mobile': mobile, 'password': password});
    return result;
  }
}
