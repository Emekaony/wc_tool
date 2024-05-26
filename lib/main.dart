// import 'dart:async';
import 'dart:io';

void main(List<String> args) async {
  String flag = args[0];
  String fileName = args[1];

  switch (flag) {
    case '-c':
      displayBytes(fileName);
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
