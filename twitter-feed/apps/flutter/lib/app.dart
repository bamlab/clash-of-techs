import 'package:clash_of_techs_twitter_feed/data/feed_json_data_source.dart';
import 'package:clash_of_techs_twitter_feed/domain/entities/feed/feed.dart';
import 'package:flutter/material.dart';

class ClashOfTechsApp extends StatelessWidget {
  const ClashOfTechsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clash of Techs - Flutter',
      home: Scaffold(
        body: FutureBuilder(
            future: FeedJsonDataSource.loadFromJson(filename: 'data/feed.json'),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              final feed = snapshot.data as Feed;
              return ListView.separated(
                itemCount: feed.posts.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) => ListTile(
                  title: Text(feed.posts[index].text),
                ),
              );
            }),
      ),
    );
  }
}
