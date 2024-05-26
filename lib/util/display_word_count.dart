import 'dart:io';

/// prints out the number of words in the file
void displayWordCount(String fileName) async {
  int wordCount = 0;
  final file = File("lib/data/$fileName");
  List<String> lines = await file.readAsLines();
  for (String line in lines) {
    String trimmedLine = line.trim();
    if (trimmedLine.isNotEmpty) {
      List<String> words =
          trimmedLine.split(" ").where((word) => word.isNotEmpty).toList();

      wordCount += words.length;
    }
  }
  print("$wordCount $fileName");
}
