import 'package:careacademy/Model/DataRepoModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class LoginRepo {
  Future<profilemodel> LoginStudent() async {
    // Define the data to send
    Map<String, dynamic> requestData = {
        "phone_v":"01222151",
        "token_id_v":"",
        "os_type_v":"",
        "os_version_v":"",
        "device_type_v":"",
        "app_version_v":"",
        "fcm_token_id_v":""
    };
    // Print out the data being sent
    print('Data being sent: $requestData');
    // Send POST request with the data
    var c_response = await http.post(
      Uri.parse('http://192.168.0.75/care_academy_api/student_login.php'),
      body: jsonEncode(requestData), // Encode data as JSON string
      headers: {
        'Content-Type': 'application/json', // Specify content type
      },
    );
    // Check response status and print response body
    print('Response status: ${c_response.statusCode}');
    print('Response body: ${c_response.body}');
    // Parse response body into profilemodel object and return it
    var responseData = jsonDecode(c_response.body);
    // Check if the response indicates an error
    if (c_response.statusCode == 500 && responseData["msg"] == "StudentAlreadyExists") {
      throw Exception("Student already exists"); // Throw an exception or handle it accordingly
    }
    return profilemodel.fromJson(responseData);
  }
}