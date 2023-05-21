import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';

class LaundryRemoteService {
  Client client = Client();
  Future<Response> fetchHome() async {
    final url = Uri.parse(
        "https://api.postman.com/collections/25382274-d8741dd6-5908-47a6-945d-d433d615febf?access_key=PMAT-01GWEEZANFNXZJZE41CRAKE8HF");

    print(url);
    return client.get(
      url,
    );
  }
}
