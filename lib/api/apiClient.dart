import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tm_app_rest_api/style/style.dart';


var BaseURL = "https://task.teamrabbil.com/api/v1/";
var RequestHeader =  {"Content-Type":"application/json"};

Future<bool> LoginRequest(FormValues) async {
  var URL = Uri.parse("${BaseURL}/login");
  var PostBody = json.encode(FormValues);
  var response = await http.post(URL, headers: RequestHeader, body: PostBody);
  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);

  if (ResultCode == 200 && ResultBody['status'] == "success") {
    SuccessToast("Request Success");
    return true;
  } else {
    ErrorToast("Request fail ! try again");
    return false;
  }
}
    
    