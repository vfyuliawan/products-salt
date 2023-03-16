import 'package:http/http.dart';

class RegisterRemoteService {
  Client client = Client();

  Future<Response> registerUser(
      String email, String username, String password) async {
    final url = Uri.https("fakestoreapi.com", "/users");
    print(url.toString());
    return client.post(
      url,
      body: {
        "email": email,
        "username": username,
        "password": password,
      },
    );
  }
}
