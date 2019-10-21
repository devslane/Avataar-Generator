import 'dart:io';

import 'package:avataar_generator/generator.dart';

void main() {
  final svgString = getSvg(new Options());

  print(svgString);

  runBrowser("data:text/html,<script>document.write('$svgString');</script>");
}

void runBrowser(String url) {
  print(Platform.operatingSystem);
  switch (Platform.operatingSystem) {
    case "linux":
      Process.run("x-www-browser", [url]);
      break;
    case "macos":
      Process.run("open -a chrome", [url]);
      break;
    case "windows":
      Process.run("explorer", [url]);
      break;
    default:
      break;
  }
}
