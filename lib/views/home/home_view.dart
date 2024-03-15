import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yt_weekly_100/utils/fetch_videos.dart';

// initialize bucket globally. PageStorageBucket() preserves page scroll
final pageBucket = PageStorageBucket();
List<String> favoriteVideos = [];

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();
    IconData icon;
    ScrollController listScrollController = ScrollController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (listScrollController.hasClients) {
            final position = listScrollController.position.minScrollExtent;
            listScrollController.animateTo(
              position,
              duration: const Duration(milliseconds: 500), // 1 second = 1000 ms
              curve: Curves.easeOut,
            );
          }
        },
        isExtended: true,
        tooltip: "Scroll to Top",
        child: const Icon(Icons.arrow_upward),
      ),
      body: PageStorage(
        bucket: pageBucket,
        child: FutureBuilder(
          key: const PageStorageKey<String>('pageOne'),
          future: fetchVideos(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                controller: listScrollController,
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  var videoDate =
                      "${videos[index].publishedAt.substring(5, 10)}-${videos[index].publishedAt.substring(0, 4)}";

                  if (favoriteVideos.contains(videos[index].id)) {
                    icon = Icons.favorite;
                  } else {
                    icon = Icons.favorite_border;
                  }

                  return GestureDetector(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                            'https://www.youtube.com/watch?v=${videos[index].id}'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 50),
                          Image.network(
                            videos[index].imgUrl,
                            loadingBuilder: (context, child, progress) {
                              return progress == null
                                  ? child
                                  : const CircularProgressIndicator();
                            },
                          ),
                          ListTile(
                            title: Center(
                                child:
                                    Text("${index + 1}) ${videos[index].title}",
                                        style: const TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                        ))),
                            subtitle: Center(
                              child: Text(
                                'Channel: ${videos[index].channelTitle}, Upload Date: $videoDate',
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              // Handle other connection states
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ),
      ),
    );
  }
}
