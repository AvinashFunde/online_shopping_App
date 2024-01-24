import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'ApiModel.dart';

class ApiServices {
  Future<Firstapi?> getFirstapi()
  async{
    try{
      var url =Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
      var response = await http.get(url);

      if(response.statusCode==200||response.statusCode==201){
        Firstapi model = Firstapi.fromJson(json.decode(response.body));
        return model;

      }

    }catch(e){
      print(e.toString());
    }
  }
    
  
  
}


// Future<LogoutResponse?> hitDeleteAccountApi(LogoutRequest request) async{
//   LogoutResponse? response;
//   final result = await ApiClient().requestPostHeaderWithBody(
//       url: ApiConstants.deleteAccountApi,
//       requestBody: json.encode(request)
//   );
//
//   if(result != null){
//     response = LogoutResponse.fromJson(result);
//   }
//   return response;
// }