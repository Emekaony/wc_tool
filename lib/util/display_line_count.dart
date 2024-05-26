import 'dart:io';

/// prints out the number of lines in the file
void displayLineCount(String fileName) async {
  final file = File("lib/data/$fileName");
  final lines = await file.readAsLines();
  int lineCount = 0;
  for (String _ in lines) {
    lineCount++;
  }
  print("$lineCount $fileName");
}
