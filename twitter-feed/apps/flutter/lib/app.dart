import 'package:clash_of_techs_twitter_feed/data/feed_json_data_source.dart';
import 'package:clash_of_techs_twitter_feed/domain/entities/feed/feed.dart';
import 'package:clash_of_techs_twitter_feed/presentation/widgets/feed_view.dart';
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
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return FeedView(feed: snapshot.data as Feed);
            }),
      ),
    );
  }
}
