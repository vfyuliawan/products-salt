import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/data/list_jobs_cc/listjobs_cc_data.dart';

abstract class ListJobsCcRepository {
  Future<ResultEntity<ListJobsCcData>> fetchList();
}
