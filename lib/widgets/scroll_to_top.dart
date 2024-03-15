import 'package:flutter/material.dart';

class ScrollToTopButton extends StatelessWidget {
  final ScrollController scrollController;

  const ScrollToTopButton({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        if (scrollController.hasClients) {
          final position = scrollController.position.minScrollExtent;
          scrollController.animateTo(
            position,
            duration: const Duration(milliseconds: 500), // 1 second = 1000 ms
            curve: Curves.easeOut,
          );
        }
      },
      isExtended: true,
      tooltip: "Scroll to Top",
      child: const Icon(Icons.arrow_upward),
    );
  }
}
