import 'dart:convert';
// import 'dart:async';
import 'dart:io';

void main() async {
  final file = File("lib/test.txt");
  final bytes = await file.readAsBytes();
  print("Number of bytes: ${bytes.length}");
}
