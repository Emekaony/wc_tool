// import 'dart:async';
import 'dart:io';

void main(List<String> args) async {
  String flag = args[0];
  String fileName = args[1];

  switch (flag) {
    case "-c":
      displayBytes(fileName);
      break;
    case "-l":
      displayNumberOfLines(fileName);
      break;
    case "-w":
      displayNumberOfWords(fileName);
    default:
      print("flag unsupported");
  }
}

/// get the number of bytes in a specified file
void displayBytes(String fileName) async {
  final file = File("lib/data/$fileName");
  final bytes = await file.readAsBytes();
  print("${bytes.length} $fileName");
}

void displayNumberOfLines(String fileName) async {
  final file = File("lib/data/$fileName");
  final lines = await file.readAsLines();
  int lineCount = 0;
  for (String _ in lines) {
    lineCount++;
  }
  print("$lineCount $fileName");
}

void displayNumberOfWords(String fileName) async {
  int wordCount = 0;
  int lineCount = 0;
  final file = File("lib/data/$fileName");
  List<String> lines = await file.readAsLines();
  for (String line in lines) {
    int currWordCount = 0;
    lineCount++;
    String trimmedLine = line.trim();
    if (trimmedLine.isNotEmpty) {
      List<String> words =
          trimmedLine.split(" ").where((word) => word.isNotEmpty).toList();

      currWordCount = words.length;
      wordCount += words.length;
    }
    print("$lineCount == $currWordCount");
  }
  print("$wordCount $fileName");
}
