import "package:flutter/material.dart";

// display an error message to user
void displayMessageToUser(String message, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(message),
    ),
  );
}

bool isDesktopView(BuildContext context) {
  // get width of the screen
  double screenWidth = MediaQuery.of(context).size.width;

  // threshold to differentiate between desktop and mobile views
  const double desktopThreshold = 600.0;

  return screenWidth > desktopThreshold;
}
