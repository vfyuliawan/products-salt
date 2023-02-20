import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/repository/article_repository_impl.dart';
import 'package:untitled/presentation/pages/article/bloc/article_cubit.dart';
import 'package:untitled/presentation/pages/article/bloc/article_state.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  late ArticleCubit articleCubit;

  @override
  void initState() {
    super.initState();
    articleCubit = ArticleCubit(ArticleRepositoryImpl());
  }

  @override
  void dispose() {
    articleCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    articleCubit.fetchArticle("id");
    return BlocProvider.value(
      value: articleCubit,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Article"),
        ),
        body:
            BlocBuilder<ArticleCubit, ArticleState>(builder: (context, state) {
          if (state is ArticleIsEmpty) {
            print("ARTICLE : EMPTY");
            return Container(
              margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: const Text(
                "Tidak ada artikel saat ini",
                style: TextStyle(fontSize: 24),
              ),
            );
          } else if (state is ArticleLoaded) {
            print("ARTICLE : LOADED");
            return ListView.builder(
              itemCount: state.articles.length,
              itemBuilder: (context, index) {
                final item = state.articles[index];

                return Card(
                  child: Column(
                    children: [
                      Image.network(
                        state.articles[index].bannerImage,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Text(
                          item.title,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          item.sortDescription,
                          style: const TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          } else if (state is ArticleLoading) {
            print("ARTICLE : LOADING");
            return Center(child: CircularProgressIndicator());
          } else {
            print("ARTICLE : ELSE");
            return Container(
              margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: const Text(
                "Gagal menerima data artikel",
                style: TextStyle(fontSize: 24),
              ),
            );
          }
        }),
      ),
    );
  }
}
