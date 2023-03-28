import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/model/request/login_cc/login_request_cc.dart';

class LoginRemoteServiceCC {
  Client client = Client();

  Future<Response> submitLogin({LoginRequest? request}) async {
    final url = Uri.https(
      BaseConfig.BASE_DOMAIN_CC,
      BaseConfig.BASE_PATH_CC + BaseConfig.LOGIN_CC,
    );

    print(url);

    return client.post(
      url,
      body: request!.toJson(),
    );
  }
}
