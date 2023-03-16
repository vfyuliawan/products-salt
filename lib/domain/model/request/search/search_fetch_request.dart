// ignore_for_file: public_member_api_docs, sort_constructors_first
class SearchFetchRequest {
  String keyword;
  String typeSearch;
  int limit;
  int page;

  SearchFetchRequest(
    this.keyword,
    this.typeSearch,
    this.limit,
    this.page,
  );

  Map<String, dynamic> toQueries() {
    return <String, dynamic>{
      'queries': keyword,
      'typeSearch': typeSearch,
      'limit': limit,
      'page': page
    };
  }
}
