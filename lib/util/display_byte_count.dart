import 'dart:io';

/// prints out the number of bytes in the file
void displayBytes(String fileName) async {
  final file = File("lib/data/$fileName");
  final bytes = await file.readAsBytes();
  print("${bytes.length} $fileName");
}
