// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:untitled/base/base_response_status.dart';

class BaseResponseData {
  dynamic data;
  BaseResponseStatus? status;
  BaseResponseData(
    this.data,
    this.status,
  );
}
