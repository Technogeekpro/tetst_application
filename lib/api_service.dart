import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'config.dart';
import 'package:tetst_application/model/Customer.dart';

class ApiService {
  Future<bool> createCustomer(CustomerModel model) async{
    var authToken = base64.encode(
      utf8.encode(Config.key + ":" + Config.secret),
    );
    bool ret = false;
    try {
      var response = await Dio().post(
        Config.url + Config.customerUrl,
        data :model.toJson(),
        options : new Options(
          headers :{
            HttpHeaders.authorizationHeader: 'Basic $authToken',
            HttpHeaders.contentTypeHeader: "application/json"
          }
        )
      );
      if(response.statusCode==201){
        ret = true;
      }
    } on DioError catch(e){
      if(e.response.statusCode==404){
        ret = false;
      }
      else {
        ret = false;
      }
    }
    return ret;
  }
}