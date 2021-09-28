import 'package:flutter/material.dart';
import 'model/tweet.dart';

class TweetWidget extends StatefulWidget {
  const TweetWidget({Key? key, required this.tweet}) : super(key: key);

  final Tweet tweet;

  @override
  _TweetWidgetState createState() => _TweetWidgetState(tweet: this.tweet);
}

class _TweetWidgetState extends State<TweetWidget> {
  Tweet tweet;

  _TweetWidgetState({required this.tweet});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(tweet.author.substring(0, 2)))),
            Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text('Account stuff goes here'),
                  Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Image.network(
                        tweet.imageURL,
                        fit: BoxFit.contain,
                      )),
                  Text('engagement stuff goes here'),
                ]))
          ],
        ));
  }
}
