import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

class HomeRemoteServiceBS {
  Client client = Client();
  Future<Response> fetchHome(AuthenticationHeaderRequest header) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_BS,
        BaseConfig.BASE_PATH_BS + BaseConfig.BASE_HOME);

    print(url);
    return client.get(
      url,
    );
  }

  Future<Response> fetchHistory(AuthenticationHeaderRequest header) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_BS,
        BaseConfig.BASE_PATH_BS + BaseConfig.BASE_HISTORY);
    print(url);
    return client.get(
      url,
    );
  }
}
