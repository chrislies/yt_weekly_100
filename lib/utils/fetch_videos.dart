import 'dart:convert';
import 'package:http/http.dart' as http; // for fetching web APIs
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:yt_weekly_100/models/video.dart';

List<Video> videos = []; // Global videos list

Future<void> fetchVideos() async {
  var apiKey = dotenv.env['YOUTUBE_API_KEY'];
  // Page tokens are used for pagination since YouTube API limits maxResults to 50
  var nextPageToken = '';

  while (videos.length < 100) {
    var response = await http.get(Uri.parse(
        'https://youtube.googleapis.com/youtube/v3/videos?part=snippet&chart=mostPopular&key=$apiKey&maxResults=50&pageToken=$nextPageToken'));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);

      // Extract the 'nextPageToken' from parsed json
      nextPageToken = jsonData['nextPageToken'];

      for (var item in jsonData['items']) {
        final video = Video(
          id: item['id'],
          publishedAt: item['snippet']
              ['publishedAt'], // Access 'snippet' object
          title: item['snippet']['title'],
          channelTitle: item['snippet']['channelTitle'],
          imgUrl: item['snippet']['thumbnails']['medium']['url'],
        );
        videos.add(video);
      }
      // print(videos.length);
    } else {
      throw Exception('Failed to fetch videos');
    }
  }
}
