import 'package:http/http.dart';

class ArticleListRemoteService {
  Client client = Client();
  Future<Response> fetcArticleList() async {
    final url = Uri.https("https://fakestoreapi.com/auth/login");
    return client.post(url, body: {
      "username": "mor_2314",
      "password": "83r5^_",
    });
  }
}
