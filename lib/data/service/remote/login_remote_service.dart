import 'package:http/http.dart';

class LoginRemoteService {
  Client client = Client();
  Future<Response> loginUser(String userName, String pass) async {
    final url = Uri.https("fakestoreapi.com", "/auth/login");
    return client.post(url, body: {
      "username": userName,
      "password": pass,
    });
  }
}
