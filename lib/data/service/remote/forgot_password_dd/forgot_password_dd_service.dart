import 'package:http/http.dart';
import 'package:untitled/base/base_config.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

class ForgotPasswordRempteServiceDD {
  Client client = Client();
  Future<Response> submitForgotPassword(String email) async {
    final url = Uri.https(BaseConfig.BASE_DOMAIN_DD,
        BaseConfig.BASE_PATH_DD + BaseConfig.BASE_FOR_PASS_DD);
    return client.post(
      url,
      body: {
        "email": email,
      },
    );
  }
}
