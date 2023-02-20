import 'dart:convert';

import 'package:http/http.dart';
import 'package:untitled/data/model/article/article_collection_remote_response.dart';

class ArticleRemoteService {
  Client client = Client();
  final apiKey = "7836484668b2444790b62b14a877ef91";

  Future<Response> fetchArticles(String country) async {
    Map<String, dynamic> queries = {};
    queries['apiKey'] = apiKey;
    queries['country'] = country;

    final url = Uri.https("newsapi.org", "/v2/top-headlines", queries);
    print("URL : ${url.toString()}");
    return client.get(url);

    // final response = await client.get(url);
    //
    // if (response.statusCode == 200) {
    //   return ArticleCollectionRemoteResponse.fromJson(
    //     jsonDecode(response.body)
    //   );
    // } else {
    //   throw Exception("Failed to fetch data");
    // }
  }
}
