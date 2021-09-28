class Tweet {
  final String author;
  final String imageURL;

  Tweet({required this.author, required this.imageURL});
}

class DataSource {
  static List<Tweet> generateTweets() {
    return [
      Tweet(
          author: 'Chirag Karia', imageURL: 'https://i.imgur.com/0A7Matp.jpeg')
    ];
  }
}
